// Ghidra headless script: export custom JSB registration and bridge code.
// Script argument 0 is the output file path.

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Symbol;
import ghidra.util.task.TaskMonitor;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExportOracleBindings extends GhidraScript {
    private boolean isRelevantSymbol(String name) {
        return name.contains("JsbConnecter")
            || name.contains("BFButton")
            || name.contains("BFCardView")
            || name.contains("BFControlSlider")
            || name.contains("BFSortTableWidget")
            || name.contains("BFWebView")
            || name.contains("XSAssetsMgrJsb")
            || name.startsWith("_ZN3Jsb");
    }

    private boolean isTarget(String name) {
        return name.startsWith("register_all_xs_sanguosha")
            || name.startsWith("js_register_xs_sanguosha_")
            || name.startsWith("js_xs_sanguosha_")
            || name.contains("JsbConnecter")
            || name.startsWith("_ZN12JsbConnecter")
            || name.startsWith("_ZN14JsbConnecter")
            || name.startsWith("Jsb::")
            || name.startsWith("_ZN3Jsb")
            || name.startsWith("xs::XSAssetsMgrJsb::");
    }

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length == 0) {
            throw new IllegalArgumentException("Pass an output text file path as the first script argument");
        }

        File outputFile = new File(args[0]).getAbsoluteFile();
        File parent = outputFile.getParentFile();
        if (parent != null) {
            parent.mkdirs();
        }

        List<Function> targets = new ArrayList<>();
        Map<Function, String> targetNames = new HashMap<>();
        for (Function function : currentProgram.getFunctionManager().getFunctions(true)) {
            if (isTarget(function.getName())) {
                targets.add(function);
                targetNames.put(function, function.getName());
            }
        }
        for (Symbol symbol : currentProgram.getSymbolTable().getAllSymbols(true)) {
            String name = symbol.getName();
            if (!isRelevantSymbol(name)) {
                continue;
            }
            // ARM ELF function symbols may carry the Thumb-state bit in their
            // value. Ghidra's code addresses are aligned, so normalize it
            // before looking up the function. Without this, the prior export
            // silently skipped most Thumb-compiled C++ methods.
            Address entry = symbol.getAddress();
            Function function = currentProgram.getFunctionManager().getFunctionAt(entry);
            if (function == null && (entry.getOffset() & 1L) != 0L) {
                entry = entry.subtract(1);
                function = currentProgram.getFunctionManager().getFunctionAt(entry);
            }
            if (function == null) {
                function = currentProgram.getFunctionManager().getFunctionContaining(entry);
            }
            if (function == null) {
                try {
                    disassemble(entry);
                    function = createFunction(entry, name);
                } catch (Exception ex) {
                    println("Unable to create function for " + name + " at " + entry + ": " + ex);
                }
            }
            if (function != null && !targetNames.containsKey(function)) {
                targets.add(function);
                targetNames.put(function, name);
            }
        }
        targets.sort(Comparator.comparing((Function fn) -> targetNames.get(fn))
                               .thenComparing(fn -> fn.getEntryPoint().toString()));

        DecompInterface decompiler = new DecompInterface();
        decompiler.openProgram(currentProgram);
        try (BufferedWriter output = new BufferedWriter(new FileWriter(outputFile))) {
            output.write("# Ghidra decompilation of custom JSB oracle functions\n\n");
            output.write("Binary: " + currentProgram.getExecutablePath() + "\n\n");
            output.write("Function count: " + targets.size() + "\n\n");
            output.write("## Relevant symbols\n\n");
            for (Symbol symbol : currentProgram.getSymbolTable().getAllSymbols(true)) {
                String name = symbol.getName();
                if (name.contains("JsbConnecter") || name.contains("Jsb::") || name.startsWith("_ZN14Jsb")) {
                    output.write(name + " @ " + symbol.getAddress() + "\n");
                }
            }
            for (Function function : targets) {
                monitor.checkCancelled();
                output.write("\n/* ===== " + targetNames.get(function) + " @ " + function.getEntryPoint() + " ===== */\n");
                output.write("/* signature: " + function.getSignature() + " */\n");
                DecompileResults result = decompiler.decompileFunction(function, 60, monitor);
                if (result == null || !result.decompileCompleted()) {
                    output.write("/* Ghidra decompilation did not complete. */\n");
                    continue;
                }
                output.write(result.getDecompiledFunction().getC());
                output.write("\n");
            }
        } finally {
            decompiler.dispose();
        }
        println("Exported " + targets.size() + " custom/native functions to " + outputFile);
    }
}
