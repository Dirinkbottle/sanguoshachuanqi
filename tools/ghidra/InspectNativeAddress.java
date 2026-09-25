import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.listing.Data;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;

public class InspectNativeAddress extends GhidraScript {
    @Override
    protected void run() throws Exception {
        long[][] ranges = {{0x277930L, 0x277a0cL}, {0x277a00L, 0x277a70L}, {0x277cd0L, 0x277cf0L}, {0x277d20L,0x277d50L}};
        for (long[] range : ranges) {
            println("RANGE " + Long.toHexString(range[0]) + ".." + Long.toHexString(range[1]));
            Address start = toAddr(range[0]);
            InstructionIterator it = currentProgram.getListing().getInstructions(start, true);
            while (it.hasNext()) {
                Instruction ins = it.next();
                if (ins.getAddress().getOffset() >= range[1]) break;
                println(ins.getAddress() + " " + ins);
            }
            for (long va = range[0]; va < range[1]; va += 4) {
                Address a = toAddr(va);
                Data d = currentProgram.getListing().getDataAt(a);
                if (d != null) println("DATA " + a + " " + d.getDataType().getName() + " = " + d.getValue());
                ReferenceIterator refs = currentProgram.getReferenceManager().getReferencesTo(a);
                while (refs.hasNext()) {
                    Reference ref = refs.next();
                    println("REF " + ref.getFromAddress() + " -> " + ref.getToAddress() + " " + ref.getReferenceType());
                }
            }
        }
    }
}
