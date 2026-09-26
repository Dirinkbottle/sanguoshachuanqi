.class public final Lcom/sgscq/vpn/handler/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ljava/util/List;

.field public static final d:[I

.field public static final e:[I

.field public static final f:[Ljava/lang/String;

.field public static final g:[[Ljava/lang/Object;


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;

.field public final b:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 217

    const/16 v0, 0x288

    const/16 v1, 0x148

    const/16 v2, 0xc6

    const/16 v3, 0x62

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/x0;->d:[I

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sgscq/vpn/handler/x0;->e:[I

    const-string v0, "142002"

    const-string v2, "122023"

    const-string v3, "111009"

    const-string v4, "122009"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/x0;->f:[Ljava/lang/String;

    const-string v5, "7710001"

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "181001"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v6, v0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v12

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v20

    const-string v5, "7710011"

    const-string v7, "111003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v21

    const-string v5, "7710021"

    const-string v7, "141004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v22

    const-string v5, "7710031"

    const-string v7, "111012"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v23

    const-string v5, "7710041"

    const-string v7, "121014"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v24

    const-string v5, "7710051"

    const-string v7, "171005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v25

    const-string v5, "7710061"

    const-string v7, "112012"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v26

    const-string v5, "7710002"

    const-string v7, "181003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v27

    const-string v5, "7710012"

    const-string v7, "131003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v28

    const-string v5, "7710022"

    const-string v7, "141005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v29

    const-string v5, "7710032"

    const-string v7, "111004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v30

    const-string v5, "7710042"

    const-string v7, "111005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v31

    const-string v5, "7710052"

    const-string v7, "141020"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v32

    const-string v5, "7710062"

    const-string v7, "171015"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v33

    const-string v5, "7710003"

    const-string v7, "181002"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v34

    const-string v5, "7710013"

    const-string v7, "111008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v35

    const-string v5, "7710023"

    const-string v7, "111013"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v36

    const-string v5, "7710033"

    const-string v7, "121011"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v37

    const-string v5, "7710043"

    const-string v7, "121020"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v38

    const-string v5, "7710053"

    const-string v7, "111010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v39

    const-string v5, "7710063"

    const-string v7, "122012"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v40

    const-string v5, "7710004"

    const-string v7, "181004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v41

    const-string v5, "7710014"

    const-string v7, "121006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v42

    const-string v5, "7710024"

    const-string v7, "121005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v43

    const-string v5, "7710034"

    const-string v7, "141002"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v44

    const-string v5, "7710044"

    const-string v7, "131004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v45

    const-string v5, "7710054"

    const-string v7, "131011"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v46

    const-string v5, "7710064"

    const-string v7, "171014"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v47

    const-string v5, "7710005"

    const-string v7, "181008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v48

    const-string v5, "7710015"

    const-string v7, "121007"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v49

    const-string v5, "7710025"

    const-string v7, "131005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v50

    const-string v5, "7710035"

    const-string v7, "111006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v51

    const-string v5, "7710045"

    const-string v7, "111015"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v52

    const-string v5, "7710055"

    const-string v7, "111023"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v53

    const-string v5, "7710006"

    const-string v7, "181005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v54

    const-string v5, "7710016"

    const-string v7, "121010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v55

    const-string v5, "7710026"

    const-string v7, "131013"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v56

    const-string v5, "7710036"

    const-string v7, "121017"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v57

    const-string v5, "7710046"

    const-string v7, "171002"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v58

    const-string v5, "7710056"

    const-string v7, "122011"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v59

    const-string v5, "7710007"

    const-string v7, "181009"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v60

    const-string v5, "7710017"

    const-string v7, "131008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v61

    const-string v5, "7710027"

    const-string v7, "111022"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v62

    const-string v5, "7710037"

    const-string v7, "111017"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v63

    const-string v5, "7710047"

    const-string v7, "171010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v64

    const-string v5, "7710057"

    const-string v7, "122025"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v65

    const-string v5, "7710008"

    const-string v7, "181006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v66

    const-string v5, "7710018"

    const-string v7, "131009"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v67

    const-string v5, "7710028"

    const-string v7, "122011"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v68

    const-string v5, "7710038"

    const-string v7, "141010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v69

    const-string v5, "7710048"

    const-string v7, "131018"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v70

    const-string v5, "7710058"

    const-string v7, "142003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v71

    const-string v5, "7710009"

    const-string v7, "141012"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v72

    const-string v5, "7710019"

    const-string v7, "131012"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v73

    const-string v5, "7710029"

    const-string v7, "142006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v74

    const-string v5, "7710039"

    const-string v7, "121008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v75

    const-string v5, "7710049"

    const-string v7, "171001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v76

    const-string v5, "7710059"

    const-string v7, "114001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v77

    const-string v5, "7710010"

    const-string v7, "121004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v78

    const-string v5, "7710020"

    const-string v7, "141003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v79

    const-string v5, "7710030"

    const-string v7, "131010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v80

    const-string v5, "7710040"

    const-string v7, "131019"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v81

    const-string v5, "7710050"

    const-string v7, "171003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v82

    const-string v5, "7710060"

    const-string v7, "134001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v83

    const-string v13, "7740005"

    const-string v15, "181008"

    const/16 v3, 0x5dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x78

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v14, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v84

    const-string v13, "7740015"

    const-string v15, "121007"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v85

    const-string v13, "7740025"

    const-string v15, "131005"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v86

    const-string v13, "7740035"

    const-string v15, "111006"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v87

    const-string v13, "7740045"

    const-string v15, "111015"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v88

    const-string v13, "7740055"

    const-string v15, "111023"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v89

    const-string v13, "7740006"

    const-string v15, "181005"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v90

    const-string v13, "7740016"

    const-string v15, "121010"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v91

    const-string v13, "7740026"

    const-string v15, "131013"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v92

    const-string v13, "7740036"

    const-string v15, "121017"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v93

    const-string v13, "7740046"

    const-string v15, "171002"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v94

    const-string v13, "7740056"

    const-string v15, "122011"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v95

    const-string v13, "7740007"

    const-string v15, "181009"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v96

    const-string v13, "7740017"

    const-string v15, "131008"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v97

    const-string v13, "7740027"

    const-string v15, "111022"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v98

    const-string v13, "7740037"

    const-string v15, "111017"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v99

    const-string v13, "7740047"

    const-string v15, "171010"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v100

    const-string v13, "7740057"

    const-string v15, "122025"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v101

    const-string v13, "7740008"

    const-string v15, "181006"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v102

    const-string v13, "7740018"

    const-string v15, "131009"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v103

    const-string v13, "7740028"

    const-string v15, "122011"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v104

    const-string v13, "7740038"

    const-string v15, "141010"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v105

    const-string v13, "7740048"

    const-string v15, "131018"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v106

    const-string v13, "7740058"

    const-string v15, "142003"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v107

    const-string v13, "7740009"

    const-string v15, "141012"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v108

    const-string v13, "7740019"

    const-string v15, "131012"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v109

    const-string v13, "7740029"

    const-string v15, "142006"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v110

    const-string v13, "7740039"

    const-string v15, "121008"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v111

    const-string v13, "7740049"

    const-string v15, "171001"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v112

    const-string v13, "7740010"

    const-string v15, "121004"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v113

    const-string v13, "7740020"

    const-string v15, "141003"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v114

    const-string v13, "7740030"

    const-string v15, "131010"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v115

    const-string v13, "7740040"

    const-string v15, "131019"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v116

    const-string v13, "7740050"

    const-string v15, "171003"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v117

    const-string v13, "7740001"

    const-string v15, "181001"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v118

    const-string v13, "7740011"

    const-string v15, "111003"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v119

    const-string v13, "7740021"

    const-string v15, "141004"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v120

    const-string v13, "7740031"

    const-string v15, "111012"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v121

    const-string v13, "7740041"

    const-string v15, "121014"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v122

    const-string v13, "7740051"

    const-string v15, "171005"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v123

    const-string v13, "7740002"

    const-string v15, "181003"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v124

    const-string v13, "7740012"

    const-string v15, "131003"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v125

    const-string v13, "7740022"

    const-string v15, "141005"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v126

    const-string v13, "7740032"

    const-string v15, "111004"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v127

    const-string v13, "7740042"

    const-string v15, "111005"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v128

    const-string v13, "7740052"

    const-string v15, "141020"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v129

    const-string v13, "7740003"

    const-string v15, "181002"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v130

    const-string v13, "7740013"

    const-string v15, "111008"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v131

    const-string v13, "7740023"

    const-string v15, "111013"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v132

    const-string v13, "7740033"

    const-string v15, "121011"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v133

    const-string v13, "7740043"

    const-string v15, "121020"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v134

    const-string v13, "7740053"

    const-string v15, "111010"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v135

    const-string v13, "7740059"

    const-string v15, "171014"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v136

    const-string v13, "7740004"

    const-string v15, "181004"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v137

    const-string v13, "7740014"

    const-string v15, "121006"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v138

    const-string v13, "7740024"

    const-string v15, "121005"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v139

    const-string v13, "7740034"

    const-string v15, "141002"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v140

    const-string v13, "7740044"

    const-string v15, "131004"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v141

    const-string v13, "7740054"

    const-string v15, "131011"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v142

    const-string v5, "7720003"

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "231004"

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v6, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v143

    const-string v5, "7720013"

    const-string v7, "211003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v144

    const-string v5, "7720023"

    const-string v7, "212001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v145

    const-string v5, "7720033"

    const-string v7, "222001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v146

    const-string v5, "7720043"

    const-string v7, "241010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v147

    const-string v5, "7720004"

    const-string v7, "231005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v148

    const-string v5, "7720014"

    const-string v7, "211004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v149

    const-string v5, "7720024"

    const-string v7, "221001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v150

    const-string v5, "7720034"

    const-string v7, "241001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v151

    const-string v5, "7720044"

    const-string v7, "241011"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v152

    const-string v5, "7720005"

    const-string v7, "231002"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v153

    const-string v5, "7720015"

    const-string v7, "211005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v154

    const-string v5, "7720025"

    const-string v7, "221002"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v155

    const-string v5, "7720035"

    const-string v7, "241002"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v156

    const-string v5, "7720045"

    const-string v7, "211016"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v157

    const-string v5, "7720006"

    const-string v7, "231006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v158

    const-string v5, "7720016"

    const-string v7, "211006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v159

    const-string v5, "7720026"

    const-string v7, "221003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v160

    const-string v5, "7720036"

    const-string v7, "241003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v161

    const-string v5, "7720046"

    const-string v7, "221016"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v162

    const-string v5, "7720007"

    const-string v7, "231007"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v163

    const-string v5, "7720017"

    const-string v7, "211007"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v164

    const-string v5, "7720027"

    const-string v7, "221004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v165

    const-string v5, "7720037"

    const-string v7, "241004"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v166

    const-string v5, "7720047"

    const-string v7, "241016"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v167

    const-string v5, "7720008"

    const-string v7, "231008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v168

    const-string v5, "7720018"

    const-string v7, "211008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v169

    const-string v5, "7720028"

    const-string v7, "221005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v170

    const-string v5, "7720038"

    const-string v7, "241005"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v171

    const-string v5, "7720048"

    const-string v7, "211017"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v172

    const-string v5, "7720009"

    const-string v7, "231009"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v173

    const-string v5, "7720019"

    const-string v7, "211009"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v174

    const-string v5, "7720029"

    const-string v7, "221006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v175

    const-string v5, "7720039"

    const-string v7, "241006"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v176

    const-string v5, "7720049"

    const-string v7, "221017"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v177

    const-string v5, "7720010"

    const-string v7, "231010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v178

    const-string v5, "7720020"

    const-string v7, "211010"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v179

    const-string v5, "7720030"

    const-string v7, "221007"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v180

    const-string v5, "7720040"

    const-string v7, "241007"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v181

    const-string v5, "7720050"

    const-string v7, "241017"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v182

    const-string v5, "7720001"

    const-string v7, "231001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v183

    const-string v5, "7720011"

    const-string v7, "211001"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v184

    const-string v5, "7720021"

    const-string v7, "211011"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v185

    const-string v5, "7720031"

    const-string v7, "221008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v186

    const-string v5, "7720041"

    const-string v7, "241008"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v187

    const-string v5, "7720051"

    const-string v7, "231013"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v188

    const-string v5, "7720002"

    const-string v7, "231003"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v189

    const-string v5, "7720012"

    const-string v7, "211002"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v190

    const-string v5, "7720022"

    const-string v7, "211012"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v191

    const-string v5, "7720032"

    const-string v7, "221009"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v192

    const-string v5, "7720042"

    const-string v7, "241009"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v193

    const-string v5, "7720052"

    const-string v7, "221011"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v194

    const-string v5, "7730009"

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "351024"

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x61a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v6, v0

    move-object v8, v1

    move-object v9, v2

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v195

    const-string v5, "7730019"

    const-string v7, "351027"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v196

    const-string v5, "7730010"

    const-string v7, "351019"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v197

    const-string v5, "7730020"

    const-string v7, "351024"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v198

    const-string v5, "7730001"

    const-string v7, "351022"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v199

    const-string v5, "7730011"

    const-string v7, "351023"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v200

    const-string v5, "7730021"

    const-string v7, "351019"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v201

    const-string v5, "7730002"

    const-string v7, "331008"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v202

    const-string v5, "7730012"

    const-string v7, "351022"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v203

    const-string v5, "7730022"

    const-string v7, "351023"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v204

    const-string v5, "7730003"

    const-string v7, "351015"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v205

    const-string v5, "7730013"

    const-string v7, "331008"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v206

    const-string v5, "7730004"

    const-string v7, "351017"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v207

    const-string v5, "7730014"

    const-string v7, "351015"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v208

    const-string v5, "7730005"

    const-string v7, "351005"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v209

    const-string v5, "7730015"

    const-string v7, "351017"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v210

    const-string v5, "7730006"

    const-string v7, "311004"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v211

    const-string v5, "7730016"

    const-string v7, "351005"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v212

    const-string v5, "7730007"

    const-string v7, "341005"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v213

    const-string v5, "7730017"

    const-string v7, "311004"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v214

    const-string v5, "7730008"

    const-string v7, "351027"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v215

    const-string v5, "7730018"

    const-string v7, "341005"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v216

    filled-new-array/range {v20 .. v216}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/x0;->g:[[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "111001"

    const-string v2, "111026"

    const-string v3, "121001"

    const-string v4, "121002"

    const-string v5, "121021"

    const-string v6, "131001"

    const-string v7, "131002"

    const-string v8, "141001"

    const-string v9, "151001"

    const-string v10, "151002"

    const-string v11, "165001"

    const-string v12, "165002"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-void

    :array_0
    .array-data 4
        0x64
        0x12c
        0x1f4
        0x3e8
        0x7d0
        0x1388
        0x2710
        0x4e20
        0xc350
        0x13880
        0x249f0
        0x493e0
        0x927c0
        0xf4240
        0x16e360
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    iput-object p1, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static A(ILjava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    const-string v1, "item_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    move-result v1

    const-string v3, "pk_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "id"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "item_id"

    const-string v8, "item_id"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "num"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "item_num"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "item_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "type"

    invoke-static {v1}, Lcom/sgscq/vpn/y2;->s(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "level"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "is_new"

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array/range {v5 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static A0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static B(Landroid/content/Context;ILjava/util/Map;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "600206"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/x0;->w0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v8

    .line 12
    const-string v2, "1"

    .line 13
    .line 14
    const-string v3, "600206"

    .line 15
    .line 16
    const/16 v9, 0x2e

    .line 17
    .line 18
    const/16 v6, 0xa

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    const/16 v5, 0x2e

    .line 22
    .line 23
    move-object v4, v8

    .line 24
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/handler/x0;->U0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v2, "9002"

    .line 32
    .line 33
    const-string v3, "600206"

    .line 34
    .line 35
    const/16 v6, 0x64

    .line 36
    .line 37
    const/16 v7, 0xa

    .line 38
    .line 39
    move v5, v9

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/handler/x0;->U0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const-string v2, "600094"

    .line 48
    .line 49
    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/x0;->w0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "9001"

    .line 54
    .line 55
    const-string v4, "600094"

    .line 56
    .line 57
    const/16 v9, 0x27

    .line 58
    .line 59
    const/16 v7, 0x1e

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    const/16 v6, 0x27

    .line 63
    .line 64
    move-object v5, v2

    .line 65
    invoke-static/range {v3 .. v8}, Lcom/sgscq/vpn/handler/x0;->U0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    const-string v3, "9003"

    .line 70
    .line 71
    const-string v4, "600094"

    .line 72
    .line 73
    const/16 v7, 0x12c

    .line 74
    .line 75
    const/16 v8, 0xa

    .line 76
    .line 77
    move v6, v9

    .line 78
    invoke-static/range {v3 .. v8}, Lcom/sgscq/vpn/handler/x0;->U0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/16 v5, 0xc8

    .line 88
    .line 89
    const/4 v6, 0x6

    .line 90
    if-lt v4, v6, :cond_0

    .line 91
    .line 92
    move v4, v5

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    mul-int/lit8 v4, v4, 0x14

    .line 95
    .line 96
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const-string v7, "exchange_num"

    .line 101
    .line 102
    invoke-interface {v10, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x0;->q0(Ljava/util/Map;)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v8, "exchanged_num"

    .line 114
    .line 115
    invoke-interface {v10, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-lt p1, v6, :cond_1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    mul-int/lit8 v5, p1, 0x14

    .line 126
    .line 127
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {v2, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x0;->q0(Ljava/util/Map;)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {v2, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    sget-object p1, Lcom/sgscq/vpn/handler/d0;->c:Ljava/util/Map;

    .line 152
    .line 153
    new-instance p1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p0}, Lcom/sgscq/vpn/handler/d0;->l(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_9

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Ljava/util/Map;

    .line 181
    .line 182
    const-string v5, "id"

    .line 183
    .line 184
    const-string v6, ""

    .line 185
    .line 186
    const-string v7, "item_id"

    .line 187
    .line 188
    invoke-static {v4, v5, v6, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-nez v7, :cond_2

    .line 197
    .line 198
    sget-object v7, Lcom/sgscq/vpn/handler/d0;->f:Ljava/util/Set;

    .line 199
    .line 200
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_3

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_3
    if-nez p2, :cond_4

    .line 208
    .line 209
    const/4 v7, 0x0

    .line 210
    goto :goto_3

    .line 211
    :cond_4
    invoke-virtual {p2, v5}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    :goto_3
    const-string v8, "item_type"

    .line 216
    .line 217
    if-eqz v7, :cond_5

    .line 218
    .line 219
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    goto :goto_4

    .line 224
    :cond_5
    const-string v7, "type"

    .line 225
    .line 226
    const-string v9, "0"

    .line 227
    .line 228
    invoke-interface {v4, v7, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    :goto_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-static {v7, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    const/16 v8, 0x2e

    .line 245
    .line 246
    if-ne v7, v8, :cond_6

    .line 247
    .line 248
    move-object v6, v5

    .line 249
    goto :goto_5

    .line 250
    :cond_6
    const/16 v5, 0x2f

    .line 251
    .line 252
    if-ne v7, v5, :cond_7

    .line 253
    .line 254
    invoke-static {p2, v4}, Lcom/sgscq/vpn/handler/d0;->h0(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    :cond_7
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-nez v4, :cond_2

    .line 263
    .line 264
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_8

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_8
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    const/4 p2, 0x2

    .line 280
    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_d

    .line 285
    .line 286
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    move-object v4, v2

    .line 291
    check-cast v4, Ljava/lang/String;

    .line 292
    .line 293
    if-eqz v4, :cond_a

    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_b

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_c

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_c
    add-int/lit8 v2, p2, 0x1

    .line 310
    .line 311
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-static {p0, v4}, Lcom/sgscq/vpn/handler/x0;->w0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    const/16 v6, 0x2e

    .line 320
    .line 321
    const/16 v7, 0x12c

    .line 322
    .line 323
    const/4 v8, 0x1

    .line 324
    invoke-static/range {v3 .. v8}, Lcom/sgscq/vpn/handler/x0;->U0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move p2, v2

    .line 332
    goto :goto_6

    .line 333
    :cond_d
    return-object v0
.end method

.method public static B0(ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    if-nez p1, :cond_2

    return p0

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static C(IIIIIIIILjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 27

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "list"

    new-instance v3, Ljava/util/ArrayList;

    move-object v2, v3

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "gold_info"

    const/16 v10, 0x10c

    move/from16 v4, p0

    move/from16 v5, p1

    invoke-static {v4, v5, v10}, Lcom/sgscq/vpn/handler/x0;->a1(III)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v5, "silver_info"

    const/16 v12, 0x64

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static {v6, v7, v12}, Lcom/sgscq/vpn/handler/x0;->a1(III)Ljava/util/LinkedHashMap;

    move-result-object v6

    const-string v7, "copper_info"

    const/4 v8, 0x1

    const/16 v14, 0xa

    move/from16 v9, p4

    invoke-static {v9, v8, v14}, Lcom/sgscq/vpn/handler/x0;->a1(III)Ljava/util/LinkedHashMap;

    move-result-object v8

    const-string v9, "gold_price"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "silver_price"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "copper_price"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "need_times"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "first_time_consume_gold"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "multi_price"

    const/16 v20, 0xa78

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "next_guarantee"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v23, "guarantee_interval"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v25, "show_general_list"

    invoke-static/range {p8 .. p8}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "toast"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static C0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p0, p0

    return p0

    :catch_0
    return p1
.end method

.method public static D(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_6

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string v3, "general_status"

    .line 36
    .line 37
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const-string v5, "1"

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v3, "status"

    .line 49
    .line 50
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_2
    const-string v3, "major_pk_id"

    .line 60
    .line 61
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v5, "pk_id"

    .line 66
    .line 67
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_3

    .line 82
    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    :cond_3
    const-string v4, ""

    .line 100
    .line 101
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_4
    const-string v3, "culture_info"

    .line 105
    .line 106
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    instance-of v4, v4, Ljava/util/Map;

    .line 111
    .line 112
    if-nez v4, :cond_5

    .line 113
    .line 114
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_1
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v4, "id"

    .line 128
    .line 129
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 130
    .line 131
    .line 132
    const-string v4, "general_id"

    .line 133
    .line 134
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 135
    .line 136
    .line 137
    const-string v4, "general_name"

    .line 138
    .line 139
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 140
    .line 141
    .line 142
    const-string v4, "general_level"

    .line 143
    .line 144
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 145
    .line 146
    .line 147
    const-string v4, "general_star"

    .line 148
    .line 149
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 150
    .line 151
    .line 152
    const-string v4, "card_type"

    .line 153
    .line 154
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 155
    .line 156
    .line 157
    const-string v4, "num"

    .line 158
    .line 159
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 160
    .line 161
    .line 162
    const-string v4, "type"

    .line 163
    .line 164
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 165
    .line 166
    .line 167
    const-string v4, "general_painting_id"

    .line 168
    .line 169
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/handler/x0;->L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "general"

    .line 183
    .line 184
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-string v0, "general_soul"

    .line 188
    .line 189
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const-string p0, "show_general_info"

    .line 193
    .line 194
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    const-string p1, "reward_info"

    .line 199
    .line 200
    invoke-static {p1, v1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    return-object p0
.end method

.method public static D0(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p0, v0

    return p0

    :catch_0
    return v0
.end method

.method public static E0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "pending_recharge_orders"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static G(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "add_list"

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Ljava/util/List;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string v2, "wish_general_id"

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v4, "wish_reward_type"

    .line 34
    .line 35
    invoke-interface {p0, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v6, 0x1

    .line 53
    const/4 v7, 0x2

    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    const-string v5, "null"

    .line 57
    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v2, v6, v2, v5}, Lcom/sgscq/vpn/handler/x0;->p(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v2, v7, v2, v5}, Lcom/sgscq/vpn/handler/x0;->p(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const/16 v2, 0x32

    .line 87
    .line 88
    invoke-static {v2}, Lcom/sgscq/vpn/handler/x0;->r(I)Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    const/16 v2, 0xfa

    .line 96
    .line 97
    invoke-static {v2}, Lcom/sgscq/vpn/handler/x0;->r(I)Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    :goto_0
    const/4 v2, 0x0

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const-string v8, "wish_free"

    .line 114
    .line 115
    invoke-interface {p0, v8, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const/4 v5, 0x6

    .line 120
    new-array v5, v5, [Ljava/lang/Object;

    .line 121
    .line 122
    const-string v9, "item_index"

    .line 123
    .line 124
    aput-object v9, v5, v2

    .line 125
    .line 126
    const-string v9, "soul3"

    .line 127
    .line 128
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    const/4 v10, 0x3

    .line 133
    if-eqz v9, :cond_2

    .line 134
    .line 135
    move v2, v6

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    const-string v9, "gold50"

    .line 138
    .line 139
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    move v2, v7

    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const-string v9, "gold250"

    .line 148
    .line 149
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_4

    .line 154
    .line 155
    move v2, v10

    .line 156
    :cond_4
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    aput-object v2, v5, v6

    .line 161
    .line 162
    const-string v2, "item_list"

    .line 163
    .line 164
    aput-object v2, v5, v7

    .line 165
    .line 166
    aput-object v4, v5, v10

    .line 167
    .line 168
    const/4 v2, 0x4

    .line 169
    aput-object v1, v5, v2

    .line 170
    .line 171
    const/4 v1, 0x5

    .line 172
    aput-object v0, v5, v1

    .line 173
    .line 174
    invoke-static {v8, p0, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    return-object p0
.end method

.method public static G0(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "user_nickname"

    const-string v1, "nickName"

    const-string v2, "nickname"

    const-string v3, "roleName"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "\u73a9\u5bb6"

    return-object p0
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/handler/x0;->c1(Ljava/lang/String;Ljava/util/Map;)I

    move-result v2

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/x0;->M(Landroid/content/Context;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "can_play"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "wish_free"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "free_times"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "wish_level"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "wish_exp"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "wish_times"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wish_list"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v6, "wish_info"

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "free_times"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "can_play"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "wish_list"

    const-string v13, "wish_free"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v14, "wish_level"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const-string v16, "wish_exp"

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-string v18, "wish_times"

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v9, v13

    move-object v10, v2

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "num"

    invoke-static {v3, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "wishing"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static H0(Ljava/util/Map;Ljava/util/Map;JLjava/lang/String;)Lcom/sgscq/vpn/q4;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "orderId"

    .line 6
    .line 7
    const-string v3, "order_ids"

    .line 8
    .line 9
    const-string v4, "order_id"

    .line 10
    .line 11
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/sgscq/vpn/handler/x0;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "product_id"

    .line 24
    .line 25
    const-string v5, "pk_id"

    .line 26
    .line 27
    const-string v6, "id"

    .line 28
    .line 29
    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v1, v3}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/handler/x0;->Q0(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v0, v1, v2, v3}, Lcom/sgscq/vpn/handler/x0;->P0(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/x0;->s0(ILjava/util/Map;)Z

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    if-eqz v14, :cond_0

    .line 50
    .line 51
    mul-int/lit8 v5, v1, 0x2

    .line 52
    .line 53
    move v12, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v12, v1

    .line 56
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move-object v15, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-object/from16 v15, p4

    .line 69
    .line 70
    :goto_1
    const-string v5, "daily_recharge_day"

    .line 71
    .line 72
    const-string v7, ""

    .line 73
    .line 74
    invoke-static {v0, v5, v7, v15}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const/4 v7, 0x0

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    const-string v5, "daily_recharge_rmb_used"

    .line 82
    .line 83
    invoke-static {v7, v5, v0}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    :cond_2
    add-int v0, v7, v3

    .line 88
    .line 89
    const-string v5, "product_id"

    .line 90
    .line 91
    const-string v7, "rmb"

    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const-string v9, "base_gold"

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    const-string v11, "gold"

    .line 104
    .line 105
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    const-string v13, "first_double"

    .line 110
    .line 111
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    const-string v1, "mail_id"

    .line 116
    .line 117
    move-object v3, v15

    .line 118
    move-object v15, v1

    .line 119
    const-string v1, "recharge_"

    .line 120
    .line 121
    invoke-static {v1, v2}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v16

    .line 125
    const-string v17, "mail_time_ms"

    .line 126
    .line 127
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v18

    .line 131
    const-string v19, "day"

    .line 132
    .line 133
    const-string v21, "daily_rmb_used_after"

    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v22

    .line 139
    const-string v23, "enable_monthly_card"

    .line 140
    .line 141
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    move-object/from16 v20, v3

    .line 144
    .line 145
    filled-new-array/range {v5 .. v24}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v4, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    new-instance v0, Lcom/sgscq/vpn/q4;

    .line 154
    .line 155
    const-wide/16 v6, 0x1

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, ":recharge"

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    const-string v9, "recharge_grant"

    .line 175
    .line 176
    move-object v5, v0

    .line 177
    move-wide/from16 v11, p2

    .line 178
    .line 179
    invoke-direct/range {v5 .. v12}, Lcom/sgscq/vpn/q4;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    .line 180
    .line 181
    .line 182
    return-object v0
.end method

.method public static I(Ljava/util/Map;Ljava/lang/String;JI)I
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    return p1

    :cond_1
    int-to-long v2, p4

    add-long/2addr v0, v2

    cmp-long p0, p2, v0

    if-ltz p0, :cond_2

    return p1

    :cond_2
    sub-long/2addr v0, p2

    long-to-int p0, v0

    return p0

    :catch_0
    return p1
.end method

.method public static I0(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "charge_6480"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x1950

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/x0;->w(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "product_list"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Ljava/util/List;

    .line 25
    .line 26
    const/4 v2, 0x6

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    check-cast v0, Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    instance-of v3, v1, Ljava/util/Map;

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    check-cast v1, Ljava/util/Map;

    .line 51
    .line 52
    const-string v3, "pk_id"

    .line 53
    .line 54
    const-string v4, ""

    .line 55
    .line 56
    invoke-static {v1, v3, v4, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    const-string p0, "product_price"

    .line 63
    .line 64
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :cond_3
    return v2
.end method

.method public static J(I)I
    .locals 1

    .line 1
    const v0, 0x16e360

    if-lt p0, v0, :cond_0

    const/16 p0, 0xf

    return p0

    :cond_0
    const v0, 0xf4240

    if-lt p0, v0, :cond_1

    const/16 p0, 0xe

    return p0

    :cond_1
    const v0, 0x927c0

    if-lt p0, v0, :cond_2

    const/16 p0, 0xd

    return p0

    :cond_2
    const v0, 0x493e0

    if-lt p0, v0, :cond_3

    const/16 p0, 0xc

    return p0

    :cond_3
    const v0, 0x249f0

    if-lt p0, v0, :cond_4

    const/16 p0, 0xb

    return p0

    :cond_4
    const v0, 0x13880

    if-lt p0, v0, :cond_5

    const/16 p0, 0xa

    return p0

    :cond_5
    const v0, 0xc350

    if-lt p0, v0, :cond_6

    const/16 p0, 0x9

    return p0

    :cond_6
    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_8

    const/4 p0, 0x7

    return p0

    :cond_8
    const/16 v0, 0x1388

    if-lt p0, v0, :cond_9

    const/4 p0, 0x6

    return p0

    :cond_9
    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_a

    const/4 p0, 0x5

    return p0

    :cond_a
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_b

    const/4 p0, 0x4

    return p0

    :cond_b
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_c

    const/4 p0, 0x3

    return p0

    :cond_c
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_d

    const/4 p0, 0x2

    return p0

    :cond_d
    const/16 v0, 0x64

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static J0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of p2, p0, Ljava/util/Map;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    check-cast p0, Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {p0, p1, v1}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public static K(Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "cmn_modules"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static K0()Ljava/util/ArrayList;
    .locals 265

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "item_id"

    const-string v2, "600007"

    const-string v3, "name"

    const-string v4, "quick_buy_power"

    const-string v5, "effect_value"

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v186, v6

    move-object/from16 v164, v6

    move-object/from16 v148, v6

    move-object/from16 v150, v6

    move-object/from16 v152, v6

    move-object/from16 v126, v6

    move-object/from16 v128, v6

    move-object/from16 v130, v6

    move-object/from16 v104, v6

    move-object/from16 v106, v6

    move-object/from16 v108, v6

    move-object/from16 v82, v6

    move-object/from16 v84, v6

    move-object/from16 v86, v6

    move-object/from16 v60, v6

    move-object/from16 v62, v6

    move-object/from16 v64, v6

    move-object/from16 v28, v6

    const-string v7, "used_num"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v184, v8

    move-object/from16 v162, v8

    move-object/from16 v138, v8

    move-object/from16 v140, v8

    move-object/from16 v250, v8

    move-object/from16 v228, v8

    move-object/from16 v118, v8

    move-object/from16 v206, v8

    move-object/from16 v96, v8

    move-object/from16 v74, v8

    move-object/from16 v52, v8

    move-object/from16 v30, v8

    const-string v9, "all_num"

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v192, v12

    move-object/from16 v194, v12

    move-object/from16 v196, v12

    move-object/from16 v170, v12

    move-object/from16 v172, v12

    move-object/from16 v174, v12

    move-object/from16 v38, v12

    move-object/from16 v40, v12

    move-object/from16 v32, v12

    move-object/from16 v42, v12

    move-object/from16 v34, v12

    move-object/from16 v16, v12

    move-object/from16 v18, v12

    move-object/from16 v20, v12

    move-object v10, v12

    const-string v11, "next_all_num"

    const-string v13, "next_vip_level"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v182, v14

    move-object/from16 v198, v14

    move-object/from16 v160, v14

    move-object/from16 v176, v14

    move-object/from16 v154, v14

    move-object/from16 v146, v14

    move-object/16 v264, v14

    move-object/16 v256, v14

    move-object/from16 v242, v14

    move-object/from16 v234, v14

    move-object/from16 v116, v14

    move-object/from16 v132, v14

    move-object/from16 v124, v14

    move-object/from16 v220, v14

    move-object/from16 v212, v14

    move-object/from16 v110, v14

    move-object/from16 v102, v14

    move-object/from16 v88, v14

    move-object/from16 v80, v14

    move-object/from16 v66, v14

    move-object/from16 v58, v14

    move-object/from16 v44, v14

    move-object/from16 v36, v14

    move-object/from16 v22, v14

    const-string v15, "item_price"

    const-string v17, "price"

    const-string v19, "discount_price"

    const-string v21, "currency_type"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "pk_id"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "item_id"

    const-string v24, "600008"

    const-string v25, "name"

    const-string v26, "quick_buy_energy"

    const-string v27, "effect_value"

    const-string v29, "used_num"

    const-string v31, "all_num"

    const-string v33, "next_all_num"

    const-string v35, "next_vip_level"

    const-string v37, "item_price"

    const-string v39, "price"

    const-string v41, "discount_price"

    const-string v43, "currency_type"

    filled-new-array/range {v23 .. v44}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "2"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v45, "item_id"

    const-string v46, "600028"

    const-string v47, "name"

    const-string v48, "quick_buy_power"

    const-string v49, "effect_value"

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const-string v51, "used_num"

    const-string v53, "all_num"

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v188, v56

    move-object/from16 v166, v56

    move-object/from16 v142, v56

    move-object/from16 v144, v56

    move-object/from16 v252, v56

    move-object/from16 v254, v56

    move-object/from16 v230, v56

    move-object/from16 v232, v56

    move-object/from16 v120, v56

    move-object/from16 v122, v56

    move-object/from16 v208, v56

    move-object/from16 v210, v56

    move-object/from16 v98, v56

    move-object/from16 v100, v56

    move-object/from16 v76, v56

    move-object/from16 v78, v56

    move-object/from16 v54, v56

    const-string v55, "next_all_num"

    const-string v57, "next_vip_level"

    const-string v59, "item_price"

    const-string v61, "price"

    const-string v63, "discount_price"

    const-string v65, "currency_type"

    filled-new-array/range {v45 .. v66}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "3"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v67, "item_id"

    const-string v68, "600029"

    const-string v69, "name"

    const-string v70, "quick_buy_energy"

    const-string v71, "effect_value"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string v73, "used_num"

    const-string v75, "all_num"

    const-string v77, "next_all_num"

    const-string v79, "next_vip_level"

    const-string v81, "item_price"

    const-string v83, "price"

    const-string v85, "discount_price"

    const-string v87, "currency_type"

    filled-new-array/range {v67 .. v88}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "4"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v89, "item_id"

    const-string v90, "600018"

    const-string v91, "name"

    const-string v92, "quick_buy_ladder_challenge"

    const-string v93, "effect_value"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v94

    const-string v95, "used_num"

    const-string v97, "all_num"

    const-string v99, "next_all_num"

    const-string v101, "next_vip_level"

    const-string v103, "item_price"

    const-string v105, "price"

    const-string v107, "discount_price"

    const-string v109, "currency_type"

    filled-new-array/range {v89 .. v110}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "5"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v199, "item_id"

    const-string v200, "600100"

    const-string v201, "name"

    const-string v202, "quick_buy_ladder_challenge"

    const-string v203, "effect_value"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v204

    move-object/from16 v248, v204

    const-string v205, "used_num"

    const-string v207, "all_num"

    const-string v209, "next_all_num"

    const-string v211, "next_vip_level"

    const-string v213, "item_price"

    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v214

    move-object/16 v258, v214

    move-object/16 v260, v214

    move-object/16 v262, v214

    move-object/from16 v216, v214

    move-object/from16 v218, v214

    const-string v215, "price"

    const-string v217, "discount_price"

    const-string v219, "currency_type"

    filled-new-array/range {v199 .. v220}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "6"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v111, "item_id"

    const-string v112, "600019"

    const-string v113, "name"

    const-string v114, "quick_buy_ladder_challenge"

    const-string v115, "effect_value"

    const-string v117, "used_num"

    const-string v119, "all_num"

    const-string v121, "next_all_num"

    const-string v123, "next_vip_level"

    const-string v125, "item_price"

    const-string v127, "price"

    const-string v129, "discount_price"

    const-string v131, "currency_type"

    filled-new-array/range {v111 .. v132}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "7"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v221, "item_id"

    const-string v222, "600020"

    const-string v223, "name"

    const-string v224, "quick_buy_ladder_challenge"

    const-string v225, "effect_value"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v226

    const-string v227, "used_num"

    const-string v229, "all_num"

    const-string v231, "next_all_num"

    const-string v233, "next_vip_level"

    const-string v235, "item_price"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v236

    move-object/from16 v238, v236

    move-object/from16 v240, v236

    const-string v237, "price"

    const-string v239, "discount_price"

    const-string v241, "currency_type"

    filled-new-array/range {v221 .. v242}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "8"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v243, "item_id"

    const-string v244, "600021"

    const-string v245, "name"

    const-string v246, "quick_buy_ladder_challenge"

    const-string v247, "effect_value"

    const-string v249, "used_num"

    const-string v251, "all_num"

    const-string v253, "next_all_num"

    const-string v255, "next_vip_level"

    const-string v1, "item_price"

    move-object/16 v257, v1

    const-string v1, "price"

    move-object/16 v259, v1

    const-string v1, "discount_price"

    move-object/16 v261, v1

    const-string v1, "currency_type"

    move-object/16 v263, v1

    filled-new-array/range {v243 .. v264}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "9"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v133, "item_id"

    const-string v134, "600030"

    const-string v135, "name"

    const-string v136, "quick_clear_dungeon_cooldown"

    const-string v137, "effect_value"

    const-string v139, "used_num"

    const-string v141, "all_num"

    const-string v143, "next_all_num"

    const-string v145, "next_vip_level"

    const-string v147, "item_price"

    const-string v149, "price"

    const-string v151, "discount_price"

    const-string v153, "currency_type"

    filled-new-array/range {v133 .. v154}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "10"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v155, "item_id"

    const-string v156, "600031"

    const-string v157, "name"

    const-string v158, "quick_buy_dungeon_times"

    const-string v159, "effect_value"

    const-string v161, "used_num"

    const-string v163, "all_num"

    const-string v165, "next_all_num"

    const-string v167, "next_vip_level"

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v168

    move-object/from16 v190, v168

    const-string v169, "item_price"

    const-string v171, "price"

    const-string v173, "discount_price"

    const-string v175, "currency_type"

    filled-new-array/range {v155 .. v176}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "11"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v177, "item_id"

    const-string v178, "600035"

    const-string v179, "name"

    const-string v180, "quick_buy_elite_dungeon_times"

    const-string v181, "effect_value"

    const-string v183, "used_num"

    const-string v185, "all_num"

    const-string v187, "next_all_num"

    const-string v189, "next_vip_level"

    const-string v191, "item_price"

    const-string v193, "price"

    const-string v195, "discount_price"

    const-string v197, "currency_type"

    filled-new-array/range {v177 .. v198}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "12"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static L(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static M(Landroid/content/Context;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 75

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "wish_list"

    .line 6
    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v5, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;

    .line 17
    .line 18
    const-string v6, "wish_general_id"

    .line 19
    .line 20
    const-string v7, ""

    .line 21
    .line 22
    const-string v8, "general_id"

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    move-object v0, v7

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v5, "wish_mappings.json"

    .line 32
    .line 33
    invoke-static {v0, v5}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    :cond_2
    const-string v5, "docs/game_data_json/wish_mappings.json"

    .line 46
    .line 47
    invoke-static {v5}, Lcom/sgscq/vpn/handler/x0;->c0(Ljava/lang/String;)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_3

    .line 56
    .line 57
    :try_start_0
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->W0(Ljava/io/File;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-object v0, v7

    .line 63
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_4

    .line 70
    .line 71
    :try_start_1
    new-instance v5, Lcom/sgscq/vpn/handler/ShopHandler$1;

    .line 72
    .line 73
    invoke-direct {v5}, Lcom/sgscq/vpn/handler/ShopHandler$1;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v9, La/o;

    .line 81
    .line 82
    invoke-direct {v9}, La/o;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v0, v5}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v5, v0

    .line 90
    check-cast v5, Ljava/util/List;

    .line 91
    .line 92
    sput-object v5, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    :goto_2
    move-object/from16 v65, v2

    .line 97
    .line 98
    move-object/from16 v66, v3

    .line 99
    .line 100
    move-object/from16 v67, v4

    .line 101
    .line 102
    move-object/from16 v68, v7

    .line 103
    .line 104
    move-object v7, v8

    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :catch_1
    move-exception v0

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v9, "[Wish] load wish_mappings failed: "

    .line 111
    .line 112
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v9, "SGSCQ_SRV"

    .line 116
    .line 117
    invoke-static {v0, v5, v9}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    const-string v0, "141011"

    .line 121
    .line 122
    const-string v5, "131011"

    .line 123
    .line 124
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    const-string v0, "111013"

    .line 129
    .line 130
    const-string v5, "111012"

    .line 131
    .line 132
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    const-string v11, "111016"

    .line 137
    .line 138
    filled-new-array {v11, v5}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    const-string v15, "111014"

    .line 143
    .line 144
    filled-new-array {v15, v5}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    const-string v13, "111009"

    .line 149
    .line 150
    filled-new-array {v13, v5}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    const-string v14, "111022"

    .line 155
    .line 156
    filled-new-array {v14, v0}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    const-string v0, "112012"

    .line 161
    .line 162
    const-string v1, "111004"

    .line 163
    .line 164
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    move-object/from16 v65, v2

    .line 169
    .line 170
    move-object v2, v15

    .line 171
    move-object v15, v0

    .line 172
    const-string v0, "141006"

    .line 173
    .line 174
    move-object/from16 v66, v3

    .line 175
    .line 176
    const-string v3, "141003"

    .line 177
    .line 178
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v16

    .line 182
    const-string v0, "141007"

    .line 183
    .line 184
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v17

    .line 188
    const-string v0, "121014"

    .line 189
    .line 190
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v18

    .line 194
    const-string v0, "131017"

    .line 195
    .line 196
    move-object/from16 v67, v4

    .line 197
    .line 198
    const-string v4, "131013"

    .line 199
    .line 200
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v19

    .line 204
    move-object/from16 v68, v7

    .line 205
    .line 206
    const-string v7, "122009"

    .line 207
    .line 208
    move-object/from16 v69, v8

    .line 209
    .line 210
    const-string v8, "121006"

    .line 211
    .line 212
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v20

    .line 216
    const-string v7, "122023"

    .line 217
    .line 218
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v21

    .line 222
    const-string v7, "122008"

    .line 223
    .line 224
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v22

    .line 228
    const-string v7, "121018"

    .line 229
    .line 230
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v23

    .line 234
    const-string v7, "142006"

    .line 235
    .line 236
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v24

    .line 240
    const-string v7, "121010"

    .line 241
    .line 242
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v25

    .line 246
    move-object/from16 v70, v6

    .line 247
    .line 248
    const-string v6, "121007"

    .line 249
    .line 250
    filled-new-array {v6, v8}, [Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v26

    .line 254
    move-object/from16 p0, v9

    .line 255
    .line 256
    const-string v9, "111006"

    .line 257
    .line 258
    filled-new-array {v9, v8}, [Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v27

    .line 262
    move-object/from16 v71, v10

    .line 263
    .line 264
    const-string v10, "111003"

    .line 265
    .line 266
    move-object/from16 v72, v11

    .line 267
    .line 268
    const-string v11, "111008"

    .line 269
    .line 270
    filled-new-array {v10, v11}, [Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v28

    .line 274
    const-string v10, "141012"

    .line 275
    .line 276
    filled-new-array {v10, v11}, [Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v29

    .line 280
    const-string v10, "141008"

    .line 281
    .line 282
    move-object/from16 v73, v12

    .line 283
    .line 284
    const-string v12, "141004"

    .line 285
    .line 286
    filled-new-array {v10, v12}, [Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v30

    .line 290
    const-string v10, "121011"

    .line 291
    .line 292
    move-object/from16 v74, v13

    .line 293
    .line 294
    const-string v13, "121005"

    .line 295
    .line 296
    filled-new-array {v10, v13}, [Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v31

    .line 300
    const-string v10, "142007"

    .line 301
    .line 302
    const-string v13, "141010"

    .line 303
    .line 304
    filled-new-array {v10, v13}, [Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v32

    .line 308
    const-string v10, "141005"

    .line 309
    .line 310
    filled-new-array {v10, v13}, [Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v33

    .line 314
    const-string v13, "131015"

    .line 315
    .line 316
    filled-new-array {v13, v0}, [Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v34

    .line 320
    const-string v0, "131005"

    .line 321
    .line 322
    const-string v13, "131009"

    .line 323
    .line 324
    filled-new-array {v0, v13}, [Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v35

    .line 328
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v36

    .line 332
    const-string v4, "131010"

    .line 333
    .line 334
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v37

    .line 338
    const-string v4, "131004"

    .line 339
    .line 340
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v38

    .line 344
    filled-new-array {v8, v7}, [Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v39

    .line 348
    const-string v0, "121009"

    .line 349
    .line 350
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v40

    .line 354
    const-string v0, "111021"

    .line 355
    .line 356
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v41

    .line 360
    const-string v0, "121016"

    .line 361
    .line 362
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v42

    .line 366
    const-string v0, "121008"

    .line 367
    .line 368
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v43

    .line 372
    const-string v0, "121004"

    .line 373
    .line 374
    const-string v7, "121017"

    .line 375
    .line 376
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v44

    .line 380
    const-string v0, "121019"

    .line 381
    .line 382
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v45

    .line 386
    const-string v0, "131012"

    .line 387
    .line 388
    const-string v7, "131018"

    .line 389
    .line 390
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v46

    .line 394
    const-string v8, "131006"

    .line 395
    .line 396
    filled-new-array {v8, v7}, [Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v47

    .line 400
    filled-new-array {v7, v0}, [Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v48

    .line 404
    const-string v0, "111007"

    .line 405
    .line 406
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v49

    .line 410
    const-string v0, "131007"

    .line 411
    .line 412
    const-string v2, "131008"

    .line 413
    .line 414
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v50

    .line 418
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v51

    .line 422
    const-string v0, "112002"

    .line 423
    .line 424
    const-string v3, "111010"

    .line 425
    .line 426
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v52

    .line 430
    const-string v0, "121015"

    .line 431
    .line 432
    filled-new-array {v0, v6}, [Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v53

    .line 436
    const-string v0, "121013"

    .line 437
    .line 438
    filled-new-array {v0, v6}, [Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v54

    .line 442
    filled-new-array {v12, v10}, [Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v55

    .line 446
    const-string v0, "142002"

    .line 447
    .line 448
    filled-new-array {v0, v9}, [Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v56

    .line 452
    const-string v0, "141002"

    .line 453
    .line 454
    filled-new-array {v0, v9}, [Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v57

    .line 458
    filled-new-array {v5, v1}, [Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v58

    .line 462
    const-string v0, "171001"

    .line 463
    .line 464
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v59

    .line 468
    filled-new-array {v11, v4}, [Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v60

    .line 472
    const-string v0, "131014"

    .line 473
    .line 474
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v61

    .line 478
    filled-new-array {v13, v4}, [Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v62

    .line 482
    const-string v0, "131003"

    .line 483
    .line 484
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v63

    .line 488
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v64

    .line 492
    move-object/from16 v9, p0

    .line 493
    .line 494
    move-object/from16 v10, v71

    .line 495
    .line 496
    move-object/from16 v11, v72

    .line 497
    .line 498
    move-object/from16 v12, v73

    .line 499
    .line 500
    move-object/from16 v13, v74

    .line 501
    .line 502
    filled-new-array/range {v9 .. v64}, [[Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    new-instance v5, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .line 510
    .line 511
    const/4 v1, 0x0

    .line 512
    move v2, v1

    .line 513
    :goto_3
    const/16 v3, 0x38

    .line 514
    .line 515
    if-ge v2, v3, :cond_5

    .line 516
    .line 517
    aget-object v3, v0, v2

    .line 518
    .line 519
    aget-object v4, v3, v1

    .line 520
    .line 521
    const/4 v6, 0x1

    .line 522
    aget-object v3, v3, v6

    .line 523
    .line 524
    move-object/from16 v6, v70

    .line 525
    .line 526
    filled-new-array {v6, v3}, [Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    move-object/from16 v7, v69

    .line 531
    .line 532
    invoke-static {v7, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    add-int/lit8 v2, v2, 0x1

    .line 540
    .line 541
    goto :goto_3

    .line 542
    :cond_5
    move-object/from16 v7, v69

    .line 543
    .line 544
    move-object/from16 v6, v70

    .line 545
    .line 546
    sput-object v5, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;

    .line 547
    .line 548
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    const-string v2, "null"

    .line 557
    .line 558
    if-eqz v1, :cond_8

    .line 559
    .line 560
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    check-cast v1, Ljava/util/Map;

    .line 565
    .line 566
    move-object/from16 v3, v68

    .line 567
    .line 568
    invoke-interface {v1, v7, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    if-nez v5, :cond_7

    .line 581
    .line 582
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    if-eqz v2, :cond_6

    .line 587
    .line 588
    goto :goto_6

    .line 589
    :cond_6
    move-object/from16 v5, v67

    .line 590
    .line 591
    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_7
    :goto_6
    move-object/from16 v5, v67

    .line 596
    .line 597
    :goto_7
    move-object/from16 v68, v3

    .line 598
    .line 599
    move-object/from16 v67, v5

    .line 600
    .line 601
    goto :goto_5

    .line 602
    :cond_8
    move-object/from16 v1, v66

    .line 603
    .line 604
    move-object/from16 v5, v67

    .line 605
    .line 606
    move-object/from16 v3, v68

    .line 607
    .line 608
    instance-of v0, v1, Ljava/util/List;

    .line 609
    .line 610
    const-string v4, "\u8bb8\u613f\u53ef\u83b7\u5f97\u9b42\u9b44\u6216\u5143\u5b9d"

    .line 611
    .line 612
    const-string v8, "wish_desc"

    .line 613
    .line 614
    if-eqz v0, :cond_f

    .line 615
    .line 616
    new-instance v0, Ljava/util/ArrayList;

    .line 617
    .line 618
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .line 620
    .line 621
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 622
    .line 623
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 624
    .line 625
    .line 626
    check-cast v1, Ljava/util/List;

    .line 627
    .line 628
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    :cond_9
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 633
    .line 634
    .line 635
    move-result v10

    .line 636
    if-eqz v10, :cond_e

    .line 637
    .line 638
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    instance-of v11, v10, Ljava/util/Map;

    .line 643
    .line 644
    if-nez v11, :cond_a

    .line 645
    .line 646
    goto :goto_8

    .line 647
    :cond_a
    check-cast v10, Ljava/util/Map;

    .line 648
    .line 649
    invoke-interface {v10, v7, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v11

    .line 653
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v11

    .line 657
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v12

    .line 661
    if-nez v12, :cond_b

    .line 662
    .line 663
    goto :goto_8

    .line 664
    :cond_b
    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v12

    .line 668
    check-cast v12, Ljava/util/Map;

    .line 669
    .line 670
    if-nez v12, :cond_c

    .line 671
    .line 672
    goto :goto_8

    .line 673
    :cond_c
    invoke-interface {v12, v6, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v13

    .line 677
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v15

    .line 681
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 682
    .line 683
    .line 684
    move-result v13

    .line 685
    if-nez v13, :cond_9

    .line 686
    .line 687
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 688
    .line 689
    .line 690
    move-result v13

    .line 691
    if-eqz v13, :cond_d

    .line 692
    .line 693
    goto :goto_8

    .line 694
    :cond_d
    invoke-interface {v12, v8, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v12

    .line 698
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v12

    .line 702
    const-string v14, "wish_general_id"

    .line 703
    .line 704
    const-string v16, "wish_desc"

    .line 705
    .line 706
    invoke-static {v15, v12}, Lcom/sgscq/vpn/cloud/m0;->y2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v17

    .line 710
    const-string v18, "wish_enable"

    .line 711
    .line 712
    const-string v12, "wish_enable"

    .line 713
    .line 714
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v10

    .line 718
    invoke-static {v10}, Lcom/sgscq/vpn/handler/x0;->b1(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v10

    .line 722
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 723
    .line 724
    .line 725
    move-result-object v19

    .line 726
    filled-new-array/range {v14 .. v19}, [Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v10

    .line 730
    invoke-static {v7, v11, v10}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 731
    .line 732
    .line 733
    move-result-object v10

    .line 734
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    goto :goto_8

    .line 738
    :cond_e
    move-object/from16 v10, p1

    .line 739
    .line 740
    move-object/from16 v11, v65

    .line 741
    .line 742
    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    return-object v0

    .line 746
    :cond_f
    move-object/from16 v10, p1

    .line 747
    .line 748
    new-instance v0, Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .line 752
    .line 753
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 754
    .line 755
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 756
    .line 757
    .line 758
    const-string v9, "General"

    .line 759
    .line 760
    invoke-static {v9, v10}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 761
    .line 762
    .line 763
    move-result-object v9

    .line 764
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 765
    .line 766
    .line 767
    move-result-object v9

    .line 768
    :cond_10
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 769
    .line 770
    .line 771
    move-result v10

    .line 772
    if-eqz v10, :cond_15

    .line 773
    .line 774
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v10

    .line 778
    check-cast v10, Ljava/util/Map;

    .line 779
    .line 780
    const-string v11, "id"

    .line 781
    .line 782
    invoke-static {v10, v11, v3, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v10

    .line 786
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 787
    .line 788
    .line 789
    move-result v11

    .line 790
    if-nez v11, :cond_10

    .line 791
    .line 792
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 793
    .line 794
    .line 795
    move-result v11

    .line 796
    if-eqz v11, :cond_11

    .line 797
    .line 798
    goto :goto_9

    .line 799
    :cond_11
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v11

    .line 803
    if-nez v11, :cond_12

    .line 804
    .line 805
    goto :goto_9

    .line 806
    :cond_12
    invoke-virtual {v5, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v11

    .line 810
    check-cast v11, Ljava/util/Map;

    .line 811
    .line 812
    if-nez v11, :cond_13

    .line 813
    .line 814
    goto :goto_9

    .line 815
    :cond_13
    invoke-interface {v11, v6, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v12

    .line 819
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v14

    .line 823
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 824
    .line 825
    .line 826
    move-result v12

    .line 827
    if-nez v12, :cond_10

    .line 828
    .line 829
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 830
    .line 831
    .line 832
    move-result v12

    .line 833
    if-eqz v12, :cond_14

    .line 834
    .line 835
    goto :goto_9

    .line 836
    :cond_14
    invoke-interface {v11, v8, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v11

    .line 840
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v11

    .line 844
    const-string v13, "wish_general_id"

    .line 845
    .line 846
    const-string v15, "wish_desc"

    .line 847
    .line 848
    invoke-static {v14, v11}, Lcom/sgscq/vpn/cloud/m0;->y2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v16

    .line 852
    const-string v17, "wish_enable"

    .line 853
    .line 854
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 855
    .line 856
    filled-new-array/range {v13 .. v18}, [Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v11

    .line 860
    invoke-static {v7, v10, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 861
    .line 862
    .line 863
    move-result-object v10

    .line 864
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    goto :goto_9

    .line 868
    :cond_15
    return-object v0
.end method

.method public static N0(Ljava/lang/String;Ljava/util/Map;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "_total_days"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    const-string v2, "_claimed_days"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static O(III)I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x3e8

    goto :goto_0

    :pswitch_0
    move p0, v0

    goto :goto_0

    :pswitch_1
    const p0, 0xc350

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x4e20

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x1f40

    goto :goto_0

    :pswitch_4
    const/16 p0, 0xbb8

    :goto_0
    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static O0(Ljava/util/Map;Ljava/util/Map;Z)Lcom/sgscq/vpn/handler/w0;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/sgscq/vpn/handler/w0;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/sgscq/vpn/handler/w0;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "Item"

    .line 11
    .line 12
    invoke-static {v3, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v5, "user_item_id"

    .line 17
    .line 18
    const-string v6, "pk_id"

    .line 19
    .line 20
    const-string v7, "item_pk_id"

    .line 21
    .line 22
    const-string v8, "id"

    .line 23
    .line 24
    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v1, v5}, Lcom/sgscq/vpn/handler/x0;->f0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v7, "item_id"

    .line 33
    .line 34
    const-string v9, "goods_id"

    .line 35
    .line 36
    filled-new-array {v7, v9}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {v1, v9}, Lcom/sgscq/vpn/handler/x0;->f0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string v10, "num"

    .line 45
    .line 46
    const-string v11, "item_num"

    .line 47
    .line 48
    const/4 v12, 0x1

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    const v1, 0x7fffffff

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v13, "count"

    .line 56
    .line 57
    filled-new-array {v11, v10, v13}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    invoke-static {v1, v13}, Lcom/sgscq/vpn/handler/x0;->f0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    iget-object v14, v2, Lcom/sgscq/vpn/handler/w0;->b:Ljava/util/ArrayList;

    .line 82
    .line 83
    iget-object v15, v2, Lcom/sgscq/vpn/handler/w0;->a:Ljava/util/ArrayList;

    .line 84
    .line 85
    if-eqz v13, :cond_7

    .line 86
    .line 87
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    check-cast v13, Ljava/util/Map;

    .line 92
    .line 93
    if-nez v13, :cond_1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v16

    .line 100
    const-string v0, ""

    .line 101
    .line 102
    if-nez v16, :cond_2

    .line 103
    .line 104
    invoke-static {v13, v6, v0, v5}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v16

    .line 108
    if-eqz v16, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    if-nez v16, :cond_3

    .line 116
    .line 117
    invoke-static {v13, v8, v0, v7, v9}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    :goto_2
    const/4 v0, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 126
    :goto_4
    if-nez v0, :cond_4

    .line 127
    .line 128
    move-object/from16 v0, p0

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    const/4 v0, 0x0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-interface {v13, v11, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-interface {v13, v10, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v5, v0}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez p2, :cond_6

    .line 157
    .line 158
    if-lt v0, v5, :cond_5

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_5
    sub-int/2addr v5, v0

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v13, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v13, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 181
    .line 182
    .line 183
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :goto_6
    iput v0, v2, Lcom/sgscq/vpn/handler/w0;->c:I

    .line 195
    .line 196
    :cond_7
    const-string v0, "add"

    .line 197
    .line 198
    const-string v1, "upd"

    .line 199
    .line 200
    filled-new-array {v1, v14, v0, v4}, [Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v1, "del"

    .line 205
    .line 206
    invoke-static {v1, v15, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    move-object/from16 v1, p0

    .line 211
    .line 212
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    return-object v2
.end method

.method public static P(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    :cond_0
    return-object p1
.end method

.method public static P0(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 5

    .line 1
    const-string v0, "yuanbao"

    .line 2
    .line 3
    const-string v1, "num"

    .line 4
    .line 5
    const-string v2, "gold"

    .line 6
    .line 7
    const-string v3, "item_num"

    .line 8
    .line 9
    const-string v4, "buy_num"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move v3, v1

    .line 20
    :goto_0
    const/4 v4, 0x5

    .line 21
    if-ge v3, v4, :cond_2

    .line 22
    .line 23
    aget-object v4, v0, v3

    .line 24
    .line 25
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4, v1}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-lez v4, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    move v4, v1

    .line 40
    :goto_2
    invoke-static {p2, p0}, Lcom/sgscq/vpn/handler/x0;->E0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-gtz v4, :cond_3

    .line 45
    .line 46
    invoke-static {v1, v2, p0}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :cond_3
    if-gtz v4, :cond_9

    .line 51
    .line 52
    const-string p2, "product_id"

    .line 53
    .line 54
    const-string v0, "pk_id"

    .line 55
    .line 56
    const-string v2, "id"

    .line 57
    .line 58
    filled-new-array {p2, v0, v2}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {p1, v2}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const-string v3, ""

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    invoke-interface {p0, p2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_4
    const-string p0, "charge_6480"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_5

    .line 91
    .line 92
    const v1, 0xfd20

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    const/4 p0, 0x0

    .line 97
    invoke-static {v1, p0}, Lcom/sgscq/vpn/handler/x0;->w(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p2, "product_list"

    .line 102
    .line 103
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    instance-of p2, p0, Ljava/util/List;

    .line 108
    .line 109
    if-eqz p2, :cond_8

    .line 110
    .line 111
    check-cast p0, Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_8

    .line 122
    .line 123
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    instance-of v2, p2, Ljava/util/Map;

    .line 128
    .line 129
    if-nez v2, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    check-cast p2, Ljava/util/Map;

    .line 133
    .line 134
    invoke-static {p2, v0, v3, p1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    const-string p0, "gift_gold"

    .line 141
    .line 142
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    :cond_8
    :goto_4
    move v4, v1

    .line 151
    :cond_9
    if-gtz v4, :cond_a

    .line 152
    .line 153
    const/4 p0, 0x1

    .line 154
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    mul-int/lit8 v4, p0, 0xa

    .line 159
    .line 160
    :cond_a
    return v4
.end method

.method public static Q(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "add"

    .line 11
    .line 12
    const-string v5, "upd"

    .line 13
    .line 14
    const-string v6, "del"

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    filled-new-array {v5, v1, v4, v2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v6, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-array v1, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_0
    check-cast v1, Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v2, v2, Ljava/util/List;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Ljava/util/List;

    .line 65
    .line 66
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    instance-of v7, v7, Ljava/util/List;

    .line 80
    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    new-instance v7, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/util/List;

    .line 90
    .line 91
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v8, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v9, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    filled-new-array {v5, v9, v4, v1}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v6, v8, v1, p0, v0}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    filled-new-array {v5, v7, v4, p0}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v6, v2, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    new-array v1, v3, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public static Q0(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 5

    .line 1
    const-string v0, "money"

    .line 2
    .line 3
    const-string v1, "amount"

    .line 4
    .line 5
    const-string v2, "rmb"

    .line 6
    .line 7
    const-string v3, "price"

    .line 8
    .line 9
    const-string v4, "pay_money"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    :cond_0
    move v4, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    :goto_0
    const/4 v4, 0x5

    .line 22
    if-ge v3, v4, :cond_0

    .line 23
    .line 24
    aget-object v4, v0, v3

    .line 25
    .line 26
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4, v1}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lez v4, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    const-string v0, "product_id"

    .line 41
    .line 42
    if-gtz v4, :cond_6

    .line 43
    .line 44
    if-nez p2, :cond_3

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    const-string v3, "pk_id"

    .line 48
    .line 49
    const-string v4, "id"

    .line 50
    .line 51
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {p2, v3}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string v3, "charge_"

    .line 60
    .line 61
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    const/4 v3, 0x7

    .line 68
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    :goto_2
    move v4, p2

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_5

    .line 83
    .line 84
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x0;->I0(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-lez p2, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    :goto_3
    move v4, v1

    .line 92
    :cond_6
    :goto_4
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/x0;->E0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-gtz v4, :cond_7

    .line 97
    .line 98
    invoke-static {v1, v2, p0}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    :cond_7
    if-gtz v4, :cond_8

    .line 103
    .line 104
    if-eqz p0, :cond_8

    .line 105
    .line 106
    const-string p1, ""

    .line 107
    .line 108
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x0;->I0(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    :cond_8
    if-lez v4, :cond_9

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_9
    const/4 v4, 0x6

    .line 124
    :goto_5
    return v4
.end method

.method public static S0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static T0(ILjava/lang/String;Ljava/util/Map;)I
    .locals 7

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "SGSCQ_SRV"

    if-nez p2, :cond_0

    const-string p2, "[safeReadInt] key not found: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    instance-of v1, p2, Ljava/lang/Number;

    const-string v2, " result="

    const-string v3, " val="

    const-string v4, "[safeReadInt] key="

    if-eqz v1, :cond_1

    move-object p0, p2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[safeReadInt] parse failed for key="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sgscq/vpn/z2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return p0
.end method

.method public static U0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;
    .locals 20

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const-string v0, "item_id"

    const-string v2, "item_name"

    const-string v4, "item_num"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "item_type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "price"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "discount_price"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "currency_type"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "exchange_num"

    const/16 v15, 0x3e7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "exchanged_num"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "is_hot"

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array/range {v0 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pk_id"

    move-object/from16 v2, p0

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static V(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "local_order_"

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static V0(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const-string v0, "51"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    if-lt p1, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const-string v0, "52"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    if-lt p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public static W(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    const-string v9, "add_list"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-object v6, p0

    move-object v8, v0

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ret"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static W0(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const-string v1, "Item"

    .line 7
    .line 8
    invoke-static {v1, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x0;->z0(Ljava/util/Map;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x0;->y0(Ljava/util/Map;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Ljava/util/Map;

    .line 36
    .line 37
    const-string v8, "id"

    .line 38
    .line 39
    const-string v9, ""

    .line 40
    .line 41
    const-string v10, "item_id"

    .line 42
    .line 43
    invoke-static {v6, v8, v9, v10, p1}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-nez v8, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v8, "item_num"

    .line 55
    .line 56
    invoke-interface {v6, v8, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v9, "num"

    .line 61
    .line 62
    invoke-interface {v6, v9, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1, v0}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ge p1, p0, :cond_1

    .line 71
    .line 72
    return v0

    .line 73
    :cond_1
    sub-int/2addr p1, p0

    .line 74
    if-gtz p1, :cond_2

    .line 75
    .line 76
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 77
    .line 78
    .line 79
    const-string p0, "pk_id"

    .line 80
    .line 81
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-interface {v6, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {v6, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/x0;->g(Ljava/util/List;Ljava/util/Map;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_1
    const-string p0, "add"

    .line 123
    .line 124
    const-string p1, "upd"

    .line 125
    .line 126
    filled-new-array {p1, v4, p0, v2}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "del"

    .line 131
    .line 132
    invoke-static {p1, v3, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return v7

    .line 140
    :cond_4
    if-nez p0, :cond_5

    .line 141
    .line 142
    move v0, v7

    .line 143
    :cond_5
    return v0
.end method

.method public static X0()Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static Y(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 7

    .line 1
    const-string v4, "price"

    .line 2
    .line 3
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v6, "discount_price"

    .line 12
    .line 13
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p0, p2}, Lcom/sgscq/vpn/cloud/m0;->b0(Ljava/lang/String;Ljava/util/Map;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1, v0, p0, p2}, Lcom/sgscq/vpn/p5;->x1(IILjava/lang/String;Ljava/util/Map;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v2, "item_price"

    .line 39
    .line 40
    move v0, v5

    .line 41
    move-object v1, p1

    .line 42
    move v3, v5

    .line 43
    invoke-static/range {v0 .. v6}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static Y0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sgscq/vpn/t4;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    instance-of v2, v1, Ljava/util/Map;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 32
    .line 33
    const-string v2, "pk_id"

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-static {v1, v2, v3, p1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string p0, "item_id"

    .line 45
    .line 46
    invoke-interface {v1, p0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v2, "600032"

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const-string v3, "SGSCQ_SRV"

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    if-nez p3, :cond_4

    .line 65
    .line 66
    const-string p0, "[Wine] ten-draw cup cannot be used for single draw: "

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v3, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_7

    .line 81
    .line 82
    if-eqz p3, :cond_4

    .line 83
    .line 84
    const-string p1, "[Wine] ten draw requires JiangJunZhan, got regular cup: "

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v3, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_4
    const-string p2, "item_num"

    .line 95
    .line 96
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x0;->D0(Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-gtz p2, :cond_5

    .line 105
    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p3, "[Wine] ignore zero-count cup: "

    .line 109
    .line 110
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p0, " pk="

    .line 117
    .line 118
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v3, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_5
    const/4 p3, 0x1

    .line 133
    if-ge p2, p3, :cond_6

    .line 134
    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string p3, "[Wine] insufficient cup: "

    .line 138
    .line 139
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p0, " have="

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p0, " need=1"

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v3, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object v0

    .line 166
    :cond_6
    new-instance v0, Lcom/sgscq/vpn/t4;

    .line 167
    .line 168
    sub-int/2addr p2, p3

    .line 169
    invoke-direct {v0, p2, p1, p0}, Lcom/sgscq/vpn/t4;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string p3, "[Wine] item type mismatch: got "

    .line 176
    .line 177
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p0, " expected "

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p0, " or 600032"

    .line 192
    .line 193
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {v3, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_8
    :goto_1
    return-object v0
.end method

.method public static Z(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/m0;->y1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    move-result v0

    invoke-static {p1, p3}, Lcom/sgscq/vpn/cloud/m0;->b0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "used_num"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/cloud/m0;->i2(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "all_num"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/cloud/m0;->M1(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "next_all_num"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/cloud/m0;->N1(ILandroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "next_vip_level"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/sgscq/vpn/handler/x0;->Y(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public static Z0(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/m0;->y1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/sgscq/vpn/cloud/m0;->o1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/sgscq/vpn/cloud/m0;->x2(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {v0, p2, p1}, Lcom/sgscq/vpn/cloud/m0;->D2(ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {p4, p2, p0, p1}, Lcom/sgscq/vpn/handler/x0;->Z(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of p2, p0, Ljava/util/Map;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    check-cast p0, Ljava/util/Map;

    .line 21
    .line 22
    const-string p2, "add"

    .line 23
    .line 24
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    instance-of p2, p0, Ljava/util/List;

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    check-cast p0, Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_5

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    instance-of v1, p2, Ljava/util/Map;

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    check-cast p2, Ljava/util/Map;

    .line 55
    .line 56
    const-string v1, "pk_id"

    .line 57
    .line 58
    const-string v2, ""

    .line 59
    .line 60
    invoke-static {p2, v1, v2, p1}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    return-object p2

    .line 67
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static a1(III)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "free_times"

    const-string v1, "price"

    filled-new-array {v0, p1, v1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "free_end_time"

    invoke-static {p2, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 11

    .line 1
    const/4 v9, 0x5

    move-object v0, p1

    move-object v1, p2

    invoke-static {p2, p1}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v7

    const/16 v6, 0x3e7

    if-eqz p7, :cond_0

    const/16 v0, 0x3e7

    if-ge v7, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/sgscq/vpn/handler/x0;->e(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZII)V

    return-void
.end method

.method public static b0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Ljava/util/Map;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    check-cast v0, Ljava/util/Map;

    .line 21
    .line 22
    const-string v1, "item_id"

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string v1, "item_num"

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/sgscq/vpn/handler/x0;->D0(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_0

    .line 43
    .line 44
    const-string v1, "pk_id"

    .line 45
    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public static b1(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public static c0(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c1(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "wish_free_last_used_day"

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-static {p1, v0, v1, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public static d(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 20

    .line 1
    move-object/from16 v6, p2

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    move/from16 v1, p0

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result v8

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v8, v6, v7}, Lcom/sgscq/vpn/p5;->c(ILjava/lang/String;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    move/from16 v9, p1

    .line 22
    .line 23
    invoke-static {v8, v9, v6}, Lcom/sgscq/vpn/p5;->e1(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    move/from16 v9, p1

    .line 29
    .line 30
    const-string v10, "Item"

    .line 31
    .line 32
    invoke-static {v10, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/handler/x0;->z0(Ljava/util/Map;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/handler/x0;->y0(Ljava/util/Map;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v13

    .line 44
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v14, "del"

    .line 53
    .line 54
    const-string v15, "upd"

    .line 55
    .line 56
    const-string v5, "add"

    .line 57
    .line 58
    const-string v4, "type"

    .line 59
    .line 60
    const-string v3, "item_type"

    .line 61
    .line 62
    const-string v2, "item_id"

    .line 63
    .line 64
    const-string v9, "id"

    .line 65
    .line 66
    const-string v7, "item_num"

    .line 67
    .line 68
    move-object/from16 p0, v10

    .line 69
    .line 70
    const-string v10, "num"

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/util/Map;

    .line 79
    .line 80
    move-object/from16 v16, v0

    .line 81
    .line 82
    const-string v0, ""

    .line 83
    .line 84
    invoke-static {v1, v9, v0, v2, v6}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    move-object/from16 v10, p0

    .line 91
    .line 92
    move/from16 v9, p1

    .line 93
    .line 94
    move-object/from16 v7, p3

    .line 95
    .line 96
    move-object/from16 v0, v16

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/2addr v0, v8

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-static {v13, v1}, Lcom/sgscq/vpn/handler/x0;->g(Ljava/util/List;Ljava/util/Map;)V

    .line 146
    .line 147
    .line 148
    filled-new-array {v15, v13, v5, v11}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v14, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object/from16 v2, p0

    .line 157
    .line 158
    move-object/from16 v7, p3

    .line 159
    .line 160
    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_2
    move-object/from16 v1, p0

    .line 165
    .line 166
    move-object/from16 v16, v7

    .line 167
    .line 168
    move-object/from16 v7, p3

    .line 169
    .line 170
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v17, "pk_id"

    .line 176
    .line 177
    move-object/from16 p0, v0

    .line 178
    .line 179
    move-object v0, v1

    .line 180
    move-object/from16 v18, v1

    .line 181
    .line 182
    move-object/from16 v1, p3

    .line 183
    .line 184
    move-object/from16 v19, v2

    .line 185
    .line 186
    move-object/from16 v2, p0

    .line 187
    .line 188
    move-object v7, v3

    .line 189
    move-object/from16 v3, v17

    .line 190
    .line 191
    move-object/from16 v17, v12

    .line 192
    .line 193
    move-object v12, v4

    .line 194
    move-object v4, v9

    .line 195
    move-object v9, v5

    .line 196
    move-object/from16 v5, p2

    .line 197
    .line 198
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    move-object/from16 v0, p0

    .line 202
    .line 203
    move-object/from16 v1, v19

    .line 204
    .line 205
    move-object/from16 v2, p2

    .line 206
    .line 207
    move v3, v8

    .line 208
    move-object v4, v10

    .line 209
    move v5, v8

    .line 210
    move-object/from16 v6, v16

    .line 211
    .line 212
    invoke-static/range {v0 .. v6}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    move-object/from16 v1, p0

    .line 220
    .line 221
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    const-string v0, "is_new"

    .line 232
    .line 233
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 234
    .line 235
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    invoke-static {v13, v1}, Lcom/sgscq/vpn/handler/x0;->g(Ljava/util/List;Ljava/util/Map;)V

    .line 242
    .line 243
    .line 244
    filled-new-array {v15, v13, v9, v11}, [Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    move-object/from16 v2, v17

    .line 249
    .line 250
    invoke-static {v14, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    move-object/from16 v2, p3

    .line 255
    .line 256
    move-object/from16 v3, v18

    .line 257
    .line 258
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    return-object v1
.end method

.method public static d0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "GeneralSoul"

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    instance-of v1, p1, Ljava/util/Map;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 23
    .line 24
    const-string v1, "add"

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v1, p1, Ljava/util/List;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    instance-of v2, v1, Ljava/util/Map;

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    check-cast v1, Ljava/util/Map;

    .line 57
    .line 58
    const-string v2, "general_id"

    .line 59
    .line 60
    const-string v3, ""

    .line 61
    .line 62
    invoke-static {v1, v2, v3, p0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static e(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZII)V
    .locals 2

    const-string v0, "pk_id"

    const-string v1, "item_id"

    .line 1
    invoke-static {v0, p1, v1, p2}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "item_price"

    .line 2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "discount_price"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "currency_type"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-virtual {p1, p5, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "purchase_num"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p1, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "purchased_num"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p1, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "is_purchased"

    invoke-virtual {p1, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "can_exchange"

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p1, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string p7, "open_time"

    invoke-virtual {p1, p7, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p7, "close_time"

    invoke-virtual {p1, p7, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p7, "vip_level"

    invoke-virtual {p1, p7, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p7, "tag_id"

    invoke-virtual {p1, p7, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "is_notice"

    const-string p7, "0"

    invoke-virtual {p1, p6, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "item_title"

    invoke-virtual {p1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "item_name"

    invoke-virtual {p1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "name"

    invoke-virtual {p1, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_desc"

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_num"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "num"

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "790196"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p6, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string p7, "600012"

    const-string p8, "type"

    const-string p9, "id"

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    new-array p2, v0, [Ljava/util/Map;

    const/16 p3, 0x3e8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p4, p3, p8, p6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p9, p7, p3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p3

    aput-object p3, p2, p5

    invoke-static {p2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    goto/16 :goto_4

    :cond_0
    const-string p3, "790195"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-array p2, v0, [Ljava/util/Map;

    const/16 p3, 0x2bc

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p4, p3, p8, p6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p9, p7, p3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p3

    aput-object p3, p2, p5

    invoke-static {p2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    goto/16 :goto_4

    :cond_1
    const-string p3, "790194"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-array p2, v0, [Ljava/util/Map;

    const/16 p3, 0x1f4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p4, p3, p8, p6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p9, p7, p3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p3

    aput-object p3, p2, p5

    invoke-static {p2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    goto/16 :goto_4

    :cond_2
    const-string p3, "792328"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p6, 0x6

    if-nez p3, :cond_9

    const-string p3, "9181001"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const-string p3, "792329"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    const-string p3, "9181002"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    sget-object p2, Lcom/sgscq/vpn/c2;->a:Ljava/util/TimeZone;

    goto :goto_0

    .line 3
    :cond_5
    sget-object p3, Lcom/sgscq/vpn/c2;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/sgscq/vpn/b2;

    iget-object v1, p7, Lcom/sgscq/vpn/b2;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p7, 0x0

    :goto_1
    if-eqz p7, :cond_a

    new-array p2, v0, [Ljava/util/Map;

    .line 4
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p4, p3, p8, p6}, [Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p7, Lcom/sgscq/vpn/b2;->b:Ljava/lang/String;

    invoke-static {p9, p4, p3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p3

    aput-object p3, p2, p5

    invoke-static {p2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_4

    :cond_8
    :goto_2
    new-array p2, v0, [Ljava/util/Map;

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p4, p3, p8, p6}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "181002"

    invoke-static {p9, p4, p3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p3

    aput-object p3, p2, p5

    invoke-static {p2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_4

    :cond_9
    :goto_3
    new-array p2, v0, [Ljava/util/Map;

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p4, p3, p8, p6}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "181001"

    invoke-static {p9, p4, p3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p3

    aput-object p3, p2, p5

    invoke-static {p2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    :goto_4
    const-string p3, "add_list"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static varargs e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static f(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 28

    .line 1
    move-object/from16 v1, p2

    const-string v0, "item_id"

    const-string v2, "item_price"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "price"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "discount_price"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "currency_type"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v15, v9

    const-string v10, "purchase_num"

    const/16 v11, 0x3e7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "purchased_num"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v21, v13

    move-object/from16 v17, v13

    move-object/from16 v19, v13

    move-object/from16 v23, v13

    const-string v14, "is_purchased"

    const-string v16, "open_time"

    const-string v18, "close_time"

    const-string v20, "vip_level"

    const-string v22, "tag_id"

    const-string v24, "can_exchange"

    sget-object v25, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v26, "is_notice"

    const-string v27, "0"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pk_id"

    move-object/from16 v2, p1

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static varargs f0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static g(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static g0(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "791438"

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    const-string v1, "purchased_daily_gift_items"

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    instance-of v1, p1, Ljava/util/Map;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of v1, p0, Ljava/util/Map;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    check-cast p0, Ljava/util/Map;

    .line 45
    .line 46
    const-string v1, "day"

    .line 47
    .line 48
    invoke-static {p0, v1, p1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string p1, "count"

    .line 56
    .line 57
    invoke-static {p0, p1, v0}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :goto_0
    return v0

    .line 71
    :cond_4
    const-string v1, "purchased_gift_items"

    .line 72
    .line 73
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    instance-of v1, p1, Ljava/util/List;

    .line 78
    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    check-cast p1, Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    const/4 p0, 0x1

    .line 108
    return p0

    .line 109
    :cond_6
    :goto_1
    return v0
.end method

.method public static h(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "pk_id"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {v4, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static h0(Ljava/lang/String;Ljava/util/Map;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "purchased_shop_item_goods"

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    instance-of v1, p1, Ljava/util/Map;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "day"

    .line 29
    .line 30
    invoke-static {p1, v2, v1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    const-string v1, "counts"

    .line 38
    .line 39
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    instance-of v1, p1, Ljava/util/Map;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    return v0

    .line 48
    :cond_3
    check-cast p1, Ljava/util/Map;

    .line 49
    .line 50
    invoke-static {p1, p0, v0}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_4
    :goto_0
    return v0
.end method

.method public static m(IILjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 13

    .line 1
    const-string v0, "orderId"

    const-string v2, "is_completed"

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "price"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "gold"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "pay_status"

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v10, "status"

    move-object v1, p2

    move-object v3, v12

    move-object v9, v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "order_id"

    invoke-static {p1, p2, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "code"

    const-string v5, "result"

    const-string v7, "msg"

    const-string v8, "success"

    const-string v9, "error_code"

    const-string v11, "order_list"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object v4, p1

    move-object v6, v12

    move-object v10, p1

    move-object v12, p0

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "ret"

    invoke-static {p2, p1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "completed_recharge_orders"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static p(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .locals 16

    .line 1
    const-string v0, "id"

    const-string v2, "general_id"

    const-string v4, "num"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "item_num"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "item_type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v10, "type"

    const-string v12, "card_type"

    const-string v14, "is_new"

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v1, p0

    move-object/from16 v3, p0

    move-object v9, v11

    move-object/from16 v13, p3

    filled-new-array/range {v0 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pk_id"

    move-object/from16 v2, p2

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static q(Lcom/sgscq/vpn/w1;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/w1;->D1(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "grade"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/handler/x0;->D0(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "\u9b54"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static q0(Ljava/util/Map;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_4

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "purchased_spirit_stone_goods"

    .line 18
    .line 19
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of v2, p0, Ljava/util/Map;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    check-cast p0, Ljava/util/Map;

    .line 29
    .line 30
    const-string v2, "day"

    .line 31
    .line 32
    invoke-static {p0, v2, v0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "counts"

    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    instance-of v0, p0, Ljava/util/Map;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    check-cast p0, Ljava/util/Map;

    .line 51
    .line 52
    const-string v0, "600094"

    .line 53
    .line 54
    invoke-static {p0, v0, v1}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :cond_4
    :goto_0
    return v1
.end method

.method public static r(I)Ljava/util/LinkedHashMap;
    .locals 14

    .line 1
    const-string v0, "id"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "item_id"

    const-string v3, "600034"

    const-string v4, "num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "item_num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "item_type"

    const/16 p0, 0x10

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "type"

    const/16 p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "is_new"

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "pk_id"

    const-string v1, "600034"

    invoke-static {v0, v1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8

    .line 1
    const-string v0, "Atlas"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Ljava/util/Map;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    check-cast p1, Ljava/util/Map;

    .line 14
    .line 15
    const-string v0, "add"

    .line 16
    .line 17
    const-string v2, "upd"

    .line 18
    .line 19
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    const/4 v3, 0x2

    .line 25
    if-ge v2, v3, :cond_6

    .line 26
    .line 27
    aget-object v3, v0, v2

    .line 28
    .line 29
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    instance-of v4, v3, Ljava/util/List;

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_5

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    instance-of v5, v4, Ljava/util/Map;

    .line 55
    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    check-cast v4, Ljava/util/Map;

    .line 60
    .line 61
    const-string v5, "pk_id"

    .line 62
    .line 63
    const-string v6, ""

    .line 64
    .line 65
    const-string v7, "general_id"

    .line 66
    .line 67
    invoke-static {v4, v5, v6, v7, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const-string v5, "atlas_status"

    .line 75
    .line 76
    const-string v6, "0"

    .line 77
    .line 78
    const-string v7, "2"

    .line 79
    .line 80
    invoke-static {v4, v5, v6, v7}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    const/4 p0, 0x1

    .line 87
    return p0

    .line 88
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    return v1
.end method

.method public static s0(ILjava/util/Map;)Z
    .locals 5

    .line 1
    const/16 v0, 0xc6

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x148

    if-eq p0, v0, :cond_0

    const/16 v0, 0x288

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "first_recharge_double_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "false"

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public static t0(Ljava/util/Map;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "first_gold_wine"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/sgscq/vpn/handler/p0;->L()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/p0;->a(Ljava/util/Map;)Z

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "ladder_rank_salary"

    .line 15
    .line 16
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "ladderRankSalary"

    .line 21
    .line 22
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v3, 0x270f

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "ladder_rank"

    .line 41
    .line 42
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    new-instance v15, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "790196"

    .line 60
    .line 61
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const-string v4, "790195"

    .line 66
    .line 67
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    .line 68
    .line 69
    .line 70
    move-result v16

    .line 71
    const-string v4, "790194"

    .line 72
    .line 73
    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    .line 74
    .line 75
    .line 76
    move-result v17

    .line 77
    const-string v5, "L1"

    .line 78
    .line 79
    const-string v6, "790196"

    .line 80
    .line 81
    const-string v7, "\u5929\u68af1\u540d\u7075\u829d\u793c\u5305"

    .line 82
    .line 83
    const-string v8, "\u7075\u829d1000\u4e2a"

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v10, 0x1

    .line 87
    const/4 v14, 0x1

    .line 88
    if-ne v3, v14, :cond_0

    .line 89
    .line 90
    if-gtz v11, :cond_0

    .line 91
    .line 92
    move v12, v14

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move v12, v1

    .line 95
    :goto_0
    const/4 v13, 0x4

    .line 96
    const/16 v18, 0x1

    .line 97
    .line 98
    move-object v4, v15

    .line 99
    move/from16 v19, v14

    .line 100
    .line 101
    move/from16 v14, v18

    .line 102
    .line 103
    invoke-static/range {v4 .. v14}, Lcom/sgscq/vpn/handler/x0;->e(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZII)V

    .line 104
    .line 105
    .line 106
    const-string v5, "L2"

    .line 107
    .line 108
    const-string v6, "790195"

    .line 109
    .line 110
    const-string v7, "\u5929\u68af10\u540d\u7075\u829d\u793c\u5305"

    .line 111
    .line 112
    const-string v8, "\u7075\u829d700\u4e2a"

    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x1

    .line 116
    const/16 v4, 0xa

    .line 117
    .line 118
    if-gt v3, v4, :cond_1

    .line 119
    .line 120
    if-gtz v16, :cond_1

    .line 121
    .line 122
    move/from16 v12, v19

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move v12, v1

    .line 126
    :goto_1
    const/4 v13, 0x4

    .line 127
    const/4 v14, 0x1

    .line 128
    move-object v4, v15

    .line 129
    move/from16 v11, v16

    .line 130
    .line 131
    invoke-static/range {v4 .. v14}, Lcom/sgscq/vpn/handler/x0;->e(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZII)V

    .line 132
    .line 133
    .line 134
    const-string v5, "L3"

    .line 135
    .line 136
    const-string v6, "790194"

    .line 137
    .line 138
    const-string v7, "\u5929\u68af50\u540d\u7075\u829d\u793c\u5305"

    .line 139
    .line 140
    const-string v8, "\u7075\u829d500\u4e2a"

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x1

    .line 144
    const/16 v4, 0x32

    .line 145
    .line 146
    if-gt v3, v4, :cond_2

    .line 147
    .line 148
    if-gtz v17, :cond_2

    .line 149
    .line 150
    move/from16 v12, v19

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    move v12, v1

    .line 154
    :goto_2
    const/4 v13, 0x4

    .line 155
    const/4 v14, 0x1

    .line 156
    move-object v4, v15

    .line 157
    move/from16 v11, v17

    .line 158
    .line 159
    invoke-static/range {v4 .. v14}, Lcom/sgscq/vpn/handler/x0;->e(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZII)V

    .line 160
    .line 161
    .line 162
    const-string v3, "L4"

    .line 163
    .line 164
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    const-string v3, "L6"

    .line 169
    .line 170
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    const-string v5, "L4"

    .line 175
    .line 176
    const-string v6, "791759"

    .line 177
    .line 178
    const-string v7, "\u7075\u829d\u00d7100"

    .line 179
    .line 180
    const-string v8, "\u7075\u829d\u00d7100"

    .line 181
    .line 182
    const/16 v9, 0x2710

    .line 183
    .line 184
    const/16 v10, 0x3e7

    .line 185
    .line 186
    const/16 v3, 0x2710

    .line 187
    .line 188
    const/16 v14, 0x3e7

    .line 189
    .line 190
    if-lt v2, v3, :cond_3

    .line 191
    .line 192
    if-ge v11, v14, :cond_3

    .line 193
    .line 194
    move/from16 v12, v19

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_3
    move v12, v1

    .line 198
    :goto_3
    const/4 v13, 0x4

    .line 199
    const/16 v3, 0x64

    .line 200
    .line 201
    move-object v4, v15

    .line 202
    move v1, v14

    .line 203
    move v14, v3

    .line 204
    invoke-static/range {v4 .. v14}, Lcom/sgscq/vpn/handler/x0;->e(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZII)V

    .line 205
    .line 206
    .line 207
    const-string v5, "L6"

    .line 208
    .line 209
    const-string v6, "792707"

    .line 210
    .line 211
    const-string v7, "\u7075\u829d\u00d71000"

    .line 212
    .line 213
    const-string v8, "\u7075\u829d\u00d71000"

    .line 214
    .line 215
    const v9, 0x186a0

    .line 216
    .line 217
    .line 218
    const/16 v10, 0x3e7

    .line 219
    .line 220
    const v3, 0x186a0

    .line 221
    .line 222
    .line 223
    if-lt v2, v3, :cond_4

    .line 224
    .line 225
    if-ge v0, v1, :cond_4

    .line 226
    .line 227
    move/from16 v12, v19

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_4
    const/4 v12, 0x0

    .line 231
    :goto_4
    const/4 v13, 0x4

    .line 232
    const/16 v14, 0x3e8

    .line 233
    .line 234
    move-object v4, v15

    .line 235
    move v11, v0

    .line 236
    invoke-static/range {v4 .. v14}, Lcom/sgscq/vpn/handler/x0;->e(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZII)V

    .line 237
    .line 238
    .line 239
    return-object v15
.end method

.method public static u0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v2, :cond_2

    move v0, v2

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static v(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Lcom/sgscq/vpn/handler/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sgscq/vpn/handler/x0;-><init>(Lcom/sgscq/vpn/handler/k0;)V

    invoke-static {p0}, Lcom/sgscq/vpn/handler/x0;->u(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static v0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "\u9b54"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static w(ILjava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v9, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v11, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "super_monthly_card"

    .line 14
    .line 15
    const-string v5, "\u8d85\u7ea7\u6708\u5361"

    .line 16
    .line 17
    const-string v6, "792742"

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/16 v2, 0x4e

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const-string v7, "\u8fde\u7eed31\u5929\u6bcf\u65e5\u9886300\u5143\u5b9d"

    .line 24
    .line 25
    invoke-static/range {v1 .. v7}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "tag_id"

    .line 35
    .line 36
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v4, "gift_gold"

    .line 40
    .line 41
    const-string v5, "780"

    .line 42
    .line 43
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string v5, "super_monthly_card"

    .line 47
    .line 48
    invoke-static {v5, v0}, Lcom/sgscq/vpn/handler/x0;->N0(Ljava/lang/String;Ljava/util/Map;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "remain_day"

    .line 57
    .line 58
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance v5, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    const-string v15, "monthly_card"

    .line 73
    .line 74
    const-string v16, "\u6708\u5361"

    .line 75
    .line 76
    const-string v17, "600033"

    .line 77
    .line 78
    const/4 v12, 0x1

    .line 79
    const/16 v13, 0x1e

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    const-string v18, "\u8fde\u7eed31\u5929\u6bcf\u65e5\u9886100\u5143\u5b9d"

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    move v14, v5

    .line 86
    invoke-static/range {v12 .. v18}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v2, "300"

    .line 94
    .line 95
    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v2, "monthly_card"

    .line 99
    .line 100
    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/x0;->N0(Ljava/lang/String;Ljava/util/Map;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v2, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v13, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v22, "gift_newbie"

    .line 128
    .line 129
    const-string v23, "\u65b0\u624b\u5927\u793c\u5305"

    .line 130
    .line 131
    const-string v24, "720001"

    .line 132
    .line 133
    const/16 v20, 0x0

    .line 134
    .line 135
    const/16 v21, 0x0

    .line 136
    .line 137
    const-string v25, "\u514d\u8d39\u9886\u53d6\u65b0\u624b\u793c\u5305"

    .line 138
    .line 139
    move/from16 v19, v5

    .line 140
    .line 141
    invoke-static/range {v19 .. v25}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    const-string v22, "gift_vip_1"

    .line 149
    .line 150
    const-string v23, "VIP1\u793c\u5305"

    .line 151
    .line 152
    const-string v24, "710021"

    .line 153
    .line 154
    const/16 v20, 0x32

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    const-string v25, "VIP1\u4e13\u5c5e\u793c\u5305"

    .line 158
    .line 159
    const/16 v21, 0x1

    .line 160
    .line 161
    invoke-static/range {v19 .. v25}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    const-string v21, "gift_vip_15_big"

    .line 169
    .line 170
    const-string v22, "\u81f3\u5c0a\u4f1a\u545815\u793c\u5305"

    .line 171
    .line 172
    const-string v23, "791836"

    .line 173
    .line 174
    const v19, 0x249f0

    .line 175
    .line 176
    .line 177
    const-string v24, "VIP15\u4e13\u5c5e\u793c\u5305"

    .line 178
    .line 179
    move/from16 v18, v1

    .line 180
    .line 181
    move/from16 v20, v2

    .line 182
    .line 183
    invoke-static/range {v18 .. v24}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    const/4 v2, 0x3

    .line 196
    move/from16 v4, p0

    .line 197
    .line 198
    if-lt v4, v2, :cond_0

    .line 199
    .line 200
    const-string v17, "charge_6480"

    .line 201
    .line 202
    const-string v18, "64800\u5143\u5b9d"

    .line 203
    .line 204
    const-string v19, "600034"

    .line 205
    .line 206
    const v14, 0xfd20

    .line 207
    .line 208
    .line 209
    const/16 v15, 0x1950

    .line 210
    .line 211
    const/16 v16, 0x1

    .line 212
    .line 213
    const-string v20, "\u5145\u503c6480\u5143\u83b7\u5f9764800\u5143\u5b9d"

    .line 214
    .line 215
    invoke-static/range {v14 .. v20}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_0
    sget-object v4, Lcom/sgscq/vpn/handler/x0;->d:[I

    .line 226
    .line 227
    move v5, v1

    .line 228
    :goto_0
    const/4 v6, 0x5

    .line 229
    if-ge v5, v6, :cond_2

    .line 230
    .line 231
    aget v6, v4, v5

    .line 232
    .line 233
    mul-int/lit8 v14, v6, 0xa

    .line 234
    .line 235
    const-string v8, "charge_"

    .line 236
    .line 237
    invoke-static {v8, v6}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v17

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v10, "\u5143\u5b9d"

    .line 250
    .line 251
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v18

    .line 258
    const-string v19, "600034"

    .line 259
    .line 260
    const/16 v16, 0x1

    .line 261
    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v12, "\u5145\u503c"

    .line 265
    .line 266
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v12, "\u5143\u83b7\u5f97"

    .line 273
    .line 274
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v20

    .line 287
    move v15, v6

    .line 288
    invoke-static/range {v14 .. v20}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-static {v6, v0}, Lcom/sgscq/vpn/handler/x0;->s0(ILjava/util/Map;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_1

    .line 297
    .line 298
    const/16 v6, 0x9

    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_1
    move v6, v1

    .line 302
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {v8, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    add-int/lit8 v5, v5, 0x1

    .line 313
    .line 314
    goto :goto_0

    .line 315
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 316
    .line 317
    move-object v15, v0

    .line 318
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v19, "first_recharge"

    .line 322
    .line 323
    const-string v20, "\u9996\u5145\u5927\u793c\u5305"

    .line 324
    .line 325
    const-string v21, "791758"

    .line 326
    .line 327
    const/16 v16, 0x1

    .line 328
    .line 329
    const/16 v17, 0x6

    .line 330
    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    const-string v22, "\u9996\u5145\u4efb\u610f\u91d1\u989d\u9886\u53d6\u795e\u5c06"

    .line 334
    .line 335
    invoke-static/range {v16 .. v22}, Lcom/sgscq/vpn/handler/x0;->x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    const-string v0, "code"

    .line 350
    .line 351
    const-string v2, "result"

    .line 352
    .line 353
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 354
    .line 355
    const-string v4, "msg"

    .line 356
    .line 357
    const-string v5, "success"

    .line 358
    .line 359
    const-string v6, "error_code"

    .line 360
    .line 361
    const-string v8, "product_list"

    .line 362
    .line 363
    const-string v10, "monthly_list"

    .line 364
    .line 365
    const-string v12, "gift_list"

    .line 366
    .line 367
    const-string v14, "charge_list"

    .line 368
    .line 369
    const-string v16, "package_list"

    .line 370
    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v17

    .line 375
    move-object v1, v7

    .line 376
    move-object/from16 p0, v7

    .line 377
    .line 378
    filled-new-array/range {v0 .. v17}, [Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    const-string v1, "ret"

    .line 383
    .line 384
    move-object/from16 v2, p0

    .line 385
    .line 386
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    return-object v0
.end method

.method public static w0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static x(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "item_id"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string v3, "id"

    .line 14
    .line 15
    invoke-interface {p0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v3, "["

    .line 41
    .line 42
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v3, "]"

    .line 47
    .line 48
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v3, "\""

    .line 53
    .line 54
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v3, "\'"

    .line 59
    .line 60
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v3, ","

    .line 65
    .line 66
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    array-length v3, p0

    .line 71
    const/4 v4, 0x0

    .line 72
    :goto_0
    if-ge v4, v3, :cond_3

    .line 73
    .line 74
    aget-object v5, p0, v4

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_4

    .line 103
    .line 104
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->K0()Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->K0()Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    .line 120
    .line 121
    const-string v3, "13"

    .line 122
    .line 123
    const-string v4, "600009"

    .line 124
    .line 125
    const/16 v5, 0x62

    .line 126
    .line 127
    invoke-static {v5, v3, v4, p0}, Lcom/sgscq/vpn/handler/x0;->f(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 128
    .line 129
    .line 130
    const-string v3, "14"

    .line 131
    .line 132
    const-string v4, "600010"

    .line 133
    .line 134
    const/16 v5, 0xc6

    .line 135
    .line 136
    invoke-static {v5, v3, v4, p0}, Lcom/sgscq/vpn/handler/x0;->f(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    const-string v3, "15"

    .line 140
    .line 141
    const-string v4, "600011"

    .line 142
    .line 143
    const/16 v5, 0x12a

    .line 144
    .line 145
    invoke-static {v5, v3, v4, p0}, Lcom/sgscq/vpn/handler/x0;->f(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 146
    .line 147
    .line 148
    new-instance v3, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Ljava/util/Map;

    .line 168
    .line 169
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_5

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    move-object p0, v3

    .line 188
    :goto_3
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v1, "quick_list"

    .line 193
    .line 194
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string v1, "item_list"

    .line 198
    .line 199
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    const-string v1, "list"

    .line 203
    .line 204
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    return-object v0
.end method

.method public static x0(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2

    const-string v0, "pk_id"

    const-string v1, "id"

    .line 1
    invoke-static {v0, p3, v1, p5}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "product_id"

    .line 2
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_id"

    invoke-virtual {v0, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_name"

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_type"

    const-string p5, "1"

    invoke-virtual {v0, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_desc"

    invoke-virtual {v0, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "num"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_num"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "gift_gold"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "price"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "discount_price"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "currency_type"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "price_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "product_price"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "product_title"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "product_desc"

    invoke-virtual {v0, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extra_gold"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "remain_day"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3e7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "purchase_num"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "purchased_num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "is_purchased"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "open_time"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "close_time"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "vip_level"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tag_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "can_exchange"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "is_notice"

    const-string p2, "0"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_title"

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "limit_num"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_new"

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static y(II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u6b21\u9700\u8981 \u00a5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c\u4eca\u65e5\u5269\u4f59 \u00a5"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y0(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "Item"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string v0, "upd"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static z(II)Ljava/lang/String;
    .locals 3

    .line 1
    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "\u65e0\u9650"

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d/\u989d\u5ea6\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "Item"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string v0, "del"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final E(Ljava/util/Map;IJ)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "general_id"

    .line 6
    .line 7
    invoke-static {p1, v0, v1, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v2, v0}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "general_name"

    .line 28
    .line 29
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string p1, "general_painting_id"

    .line 37
    .line 38
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p1, "general_painting"

    .line 42
    .line 43
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string p1, "general_quality"

    .line 47
    .line 48
    const-string v2, "5"

    .line 49
    .line 50
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string p1, "general_star"

    .line 54
    .line 55
    const-string v2, "1"

    .line 56
    .line 57
    const-string v3, "tag_id"

    .line 58
    .line 59
    invoke-static {v1, p1, v2, p2, v3}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "show_time"

    .line 63
    .line 64
    const-wide/16 v3, 0x0

    .line 65
    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string p1, "disappear_time"

    .line 74
    .line 75
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string p1, "general_level"

    .line 83
    .line 84
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string p1, "card_type"

    .line 88
    .line 89
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string p1, "general_avatar"

    .line 93
    .line 94
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-object v1
.end method

.method public final F()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->T(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Lcom/sgscq/vpn/w1;->v:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Ljava/util/Map;

    .line 41
    .line 42
    const-wide/16 v7, 0x0

    .line 43
    .line 44
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/sgscq/vpn/handler/x0;->E(Ljava/util/Map;IJ)Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    invoke-virtual {v0, v4, v5, v1}, Lcom/sgscq/vpn/w1;->f1(JLjava/util/Set;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-eqz v7, :cond_7

    .line 61
    .line 62
    sget-boolean v8, Lcom/sgscq/vpn/c7;->i:Z

    .line 63
    .line 64
    if-eqz v8, :cond_2

    .line 65
    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {v0, v4, v5}, Lcom/sgscq/vpn/w1;->g1(J)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    :goto_2
    iget-object v9, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 76
    .line 77
    if-nez v9, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    iget-object v1, v9, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 81
    .line 82
    :goto_3
    const-wide/16 v9, 0x3e8

    .line 83
    .line 84
    mul-long/2addr v4, v9

    .line 85
    invoke-static {v1, v4, v5}, Lcom/sgscq/vpn/l2;->a(Landroid/content/Context;J)Lcom/sgscq/vpn/j2;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-wide v11, v1, Lcom/sgscq/vpn/j2;->h:J

    .line 90
    .line 91
    cmp-long v1, v11, v4

    .line 92
    .line 93
    if-gtz v1, :cond_4

    .line 94
    .line 95
    move v1, v6

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    sub-long/2addr v11, v4

    .line 98
    const-wide/16 v4, 0x3e7

    .line 99
    .line 100
    add-long/2addr v11, v4

    .line 101
    div-long/2addr v11, v9

    .line 102
    const-wide/32 v4, 0x7fffffff

    .line 103
    .line 104
    .line 105
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    long-to-int v1, v4

    .line 110
    :goto_4
    int-to-long v4, v1

    .line 111
    const/4 v1, 0x4

    .line 112
    invoke-virtual {p0, v7, v1, v4, v5}, Lcom/sgscq/vpn/handler/x0;->E(Ljava/util/Map;IJ)Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v4, "[WineGeneralInfo] god="

    .line 122
    .line 123
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->T(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lcom/sgscq/vpn/w1;->v:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, " limited="

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, "id"

    .line 144
    .line 145
    const-string v3, ""

    .line 146
    .line 147
    const-string v4, "general_id"

    .line 148
    .line 149
    invoke-static {v7, v0, v3, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-ge v6, v9, :cond_6

    .line 158
    .line 159
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    check-cast v9, Ljava/util/Map;

    .line 164
    .line 165
    invoke-static {v9, v0, v3, v4, v5}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_5

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_6
    const/4 v6, -0x1

    .line 176
    :goto_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, "/"

    .line 180
    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, " current="

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v0, "general_name"

    .line 197
    .line 198
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "SGSCQ_SRV"

    .line 210
    .line 211
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_7
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    return-object v0
.end method

.method public final F0(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x0;->q(Lcom/sgscq/vpn/w1;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :try_start_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    :try_start_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 p3, 0x0

    .line 25
    move v1, p3

    .line 26
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_0

    .line 31
    .line 32
    mul-int/lit8 p3, p3, 0x1f

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr p3, v2

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p2, p3

    .line 43
    :goto_1
    add-int/2addr p2, p1

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p2, p1}, Ljava/lang/Math;->floorMod(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_1
    invoke-virtual {p2}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    new-instance p3, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    iget-object p1, p0, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    .line 124
    return-object p1

    .line 125
    :catch_1
    move-exception p1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p3, "[Wine] pickRandomGoldGeneral error: "

    .line 129
    .line 130
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string p3, "SGSCQ_SRV"

    .line 134
    .line 135
    invoke-static {p1, p2, p3}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    const-string p1, "111003"

    .line 139
    .line 140
    return-object p1
.end method

.method public final L0(Ljava/lang/String;)[B
    .locals 21

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v11, p1

    .line 6
    .line 7
    move-object/from16 v13, p1

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v15

    .line 14
    move-object v1, v15

    .line 15
    const-string v0, "code"

    .line 16
    .line 17
    const-string v2, "error_code"

    .line 18
    .line 19
    const-string v3, "e_20002"

    .line 20
    .line 21
    const-string v4, "result"

    .line 22
    .line 23
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    const-string v6, "msg"

    .line 26
    .line 27
    const-string v8, "message"

    .line 28
    .line 29
    const-string v10, "toast"

    .line 30
    .line 31
    const-string v12, "tips"

    .line 32
    .line 33
    const-string v14, "pay_url"

    .line 34
    .line 35
    const-string v16, ""

    .line 36
    .line 37
    move-object/from16 v20, v15

    .line 38
    .line 39
    move-object/from16 v15, v16

    .line 40
    .line 41
    const-string v16, "status"

    .line 42
    .line 43
    const/16 v17, 0x0

    .line 44
    .line 45
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v19

    .line 49
    move-object/from16 v17, v19

    .line 50
    .line 51
    const-string v18, "pay_status"

    .line 52
    .line 53
    filled-new-array/range {v0 .. v19}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "ret"

    .line 58
    .line 59
    move-object/from16 v2, v20

    .line 60
    .line 61
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object/from16 v1, p0

    .line 70
    .line 71
    iget-object v2, v1, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method

.method public final M0()[B
    .locals 9

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "error_code"

    const-string v5, "result"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "msg"

    const-string v8, "\u7f51\u7edc\u65f6\u95f4\u672a\u540c\u6b65\uff0c\u5145\u503c\u529f\u80fd\u6682\u4e0d\u53ef\u7528"

    move-object v2, v0

    move-object v4, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final N(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 8
    .line 9
    :goto_0
    invoke-static {p1, v0}, Lcom/sgscq/vpn/p5;->B0(ILandroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final R()Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_4

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    array-length v5, v4

    .line 48
    const/16 v6, 0xa

    .line 49
    .line 50
    if-gt v5, v6, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    aget-wide v5, v4, v6

    .line 54
    .line 55
    double-to-int v4, v5

    .line 56
    const/4 v5, 0x3

    .line 57
    if-eq v4, v5, :cond_3

    .line 58
    .line 59
    const/4 v5, 0x4

    .line 60
    if-ne v4, v5, :cond_0

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "[Wine] Error loading copper pool: "

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "SGSCQ_SRV"

    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    const-string v0, "113010"

    .line 103
    .line 104
    return-object v0
.end method

.method public final R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v3, "desc"

    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    :cond_0
    move-object v1, v0

    .line 39
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "itemdesc"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_22

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, -0x1

    .line 58
    sparse-switch v1, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_0
    const-string v1, "791758"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_2
    const/16 v2, 0x1d

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_1
    const-string v1, "791550"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_3
    const/16 v2, 0x1c

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :sswitch_2
    const-string v1, "791438"

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_4
    const/16 v2, 0x1b

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_3
    const-string v1, "600078"

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_5
    const/16 v2, 0x1a

    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :sswitch_4
    const-string v1, "600077"

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_6
    const/16 v2, 0x19

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :sswitch_5
    const-string v1, "600076"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_7

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_7
    const/16 v2, 0x18

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :sswitch_6
    const-string v1, "600065"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_8
    const/16 v2, 0x17

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :sswitch_7
    const-string v1, "600037"

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_9

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_9
    const/16 v2, 0x16

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :sswitch_8
    const-string v1, "600036"

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_a

    .line 182
    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :cond_a
    const/16 v2, 0x15

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_9
    const-string v1, "600032"

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-nez v1, :cond_b

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_b
    const/16 v2, 0x14

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :sswitch_a
    const-string v1, "600028"

    .line 204
    .line 205
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_c

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_c
    const/16 v2, 0x13

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :sswitch_b
    const-string v1, "600025"

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_d

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_d
    const/16 v2, 0x12

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :sswitch_c
    const-string v1, "600024"

    .line 232
    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_e

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_e
    const/16 v2, 0x11

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :sswitch_d
    const-string v1, "600023"

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_f

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_f
    const/16 v2, 0x10

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :sswitch_e
    const-string v1, "600014"

    .line 260
    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_10

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_10
    const/16 v2, 0xf

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :sswitch_f
    const-string v1, "600013"

    .line 274
    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_11

    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :cond_11
    const/16 v2, 0xe

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :sswitch_10
    const-string v1, "600012"

    .line 288
    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_12

    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_12
    const/16 v2, 0xd

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :sswitch_11
    const-string v1, "600011"

    .line 302
    .line 303
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_13

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :cond_13
    const/16 v2, 0xc

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :sswitch_12
    const-string v1, "600010"

    .line 316
    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_14

    .line 322
    .line 323
    goto/16 :goto_1

    .line 324
    .line 325
    :cond_14
    const/16 v2, 0xb

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :sswitch_13
    const-string v1, "600009"

    .line 330
    .line 331
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-nez v1, :cond_15

    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :cond_15
    const/16 v2, 0xa

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :sswitch_14
    const-string v1, "600008"

    .line 344
    .line 345
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_16

    .line 350
    .line 351
    goto/16 :goto_1

    .line 352
    .line 353
    :cond_16
    const/16 v2, 0x9

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :sswitch_15
    const-string v1, "600007"

    .line 358
    .line 359
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-nez v1, :cond_17

    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_17
    const/16 v2, 0x8

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :sswitch_16
    const-string v1, "600006"

    .line 372
    .line 373
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-nez v1, :cond_18

    .line 378
    .line 379
    goto :goto_1

    .line 380
    :cond_18
    const/4 v2, 0x7

    .line 381
    goto :goto_1

    .line 382
    :sswitch_17
    const-string v1, "600005"

    .line 383
    .line 384
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-nez v1, :cond_19

    .line 389
    .line 390
    goto :goto_1

    .line 391
    :cond_19
    const/4 v2, 0x6

    .line 392
    goto :goto_1

    .line 393
    :sswitch_18
    const-string v1, "600004"

    .line 394
    .line 395
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-nez v1, :cond_1a

    .line 400
    .line 401
    goto :goto_1

    .line 402
    :cond_1a
    const/4 v2, 0x5

    .line 403
    goto :goto_1

    .line 404
    :sswitch_19
    const-string v1, "600003"

    .line 405
    .line 406
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-nez v1, :cond_1b

    .line 411
    .line 412
    goto :goto_1

    .line 413
    :cond_1b
    const/4 v2, 0x4

    .line 414
    goto :goto_1

    .line 415
    :sswitch_1a
    const-string v1, "600002"

    .line 416
    .line 417
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-nez v1, :cond_1c

    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_1c
    const/4 v2, 0x3

    .line 425
    goto :goto_1

    .line 426
    :sswitch_1b
    const-string v1, "600001"

    .line 427
    .line 428
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-nez v1, :cond_1d

    .line 433
    .line 434
    goto :goto_1

    .line 435
    :cond_1d
    const/4 v2, 0x2

    .line 436
    goto :goto_1

    .line 437
    :sswitch_1c
    const-string v1, "363001"

    .line 438
    .line 439
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-nez v1, :cond_1e

    .line 444
    .line 445
    goto :goto_1

    .line 446
    :cond_1e
    const/4 v2, 0x1

    .line 447
    goto :goto_1

    .line 448
    :sswitch_1d
    const-string v1, "361001"

    .line 449
    .line 450
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-nez v1, :cond_1f

    .line 455
    .line 456
    goto :goto_1

    .line 457
    :cond_1f
    const/4 v2, 0x0

    .line 458
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 459
    .line 460
    .line 461
    const-string v1, "710"

    .line 462
    .line 463
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-nez v1, :cond_21

    .line 468
    .line 469
    const-string v1, "7927"

    .line 470
    .line 471
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-nez v1, :cond_21

    .line 476
    .line 477
    const-string v1, "791836"

    .line 478
    .line 479
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    if-eqz p1, :cond_20

    .line 484
    .line 485
    goto :goto_2

    .line 486
    :cond_20
    move-object v1, v0

    .line 487
    goto/16 :goto_4

    .line 488
    .line 489
    :cond_21
    :goto_2
    const-string p1, "\u81f3\u5c0a\u4f1a\u5458\u5927\u793c\u5305"

    .line 490
    .line 491
    goto/16 :goto_3

    .line 492
    .line 493
    :pswitch_0
    const-string p1, "\u6253\u5f00\u53ef\u83b7\u5f97\u5f20\u98de\u00d71\u3001\u5f20\u98de\u9b42\u9b44\u00d7105\u3001\u5305\u5b50\u00d72\u3001\u7ea2\u8336\u00d72\u3001\u7075\u829d\u00d7100"

    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :pswitch_1
    const-string p1, "\u81f3\u5c0a\u4f1a\u5458\u8d35\u5bbe\u793c\u5305"

    .line 498
    .line 499
    goto/16 :goto_3

    .line 500
    .line 501
    :pswitch_2
    const-string p1, "\u81f3\u5c0a\u4f1a\u54581\u4ee5\u4e0a\uff08\u542b\u81f3\u5c0a\u4f1a\u54581\uff09\u6bcf\u65e5\u53ef\u8d2d\u4e701\u6b21\uff0c\u5185\u542b\u4e8c\u7ea7\u7ecf\u9a8c\u795e\u4e66\u00d72"

    .line 502
    .line 503
    goto/16 :goto_3

    .line 504
    .line 505
    :pswitch_3
    const-string p1, "\u4f7f\u7528\u540e\u968f\u673a\u83b7\u5f97\u4e00\u98971\u7ea7\u653b\u51fb\u3001\u9632\u5fa1\u3001\u751f\u547d\u6216\u667a\u529b\u5b9d\u77f3\u3002"

    .line 506
    .line 507
    goto :goto_3

    .line 508
    :pswitch_4
    const-string p1, "\u53ef\u4ee5\u6539\u53d8\u88c5\u5907\u5b9d\u77f3\u5b54\u4f4d\u7684\u5c5e\u6027\u3002"

    .line 509
    .line 510
    goto :goto_3

    .line 511
    :pswitch_5
    const-string p1, "\u53ef\u4ee5\u4e3a\u795e\u54c1\u8d28\u88c5\u5907\u589e\u52a0\u5b9d\u77f3\u5b54\u4f4d\u3002"

    .line 512
    .line 513
    goto :goto_3

    .line 514
    :pswitch_6
    const-string p1, "\u8bcf\u4ee4\u4e00\u51fa\uff0c\u516b\u65b9\u6765\u63f4\u3002\u7528\u4e8e\u89e3\u9501\u4f19\u4f34\u4f4d\u7f6e\u3002"

    .line 515
    .line 516
    goto :goto_3

    .line 517
    :pswitch_7
    const-string p1, "\u4f7f\u7528\u989d\u5916\u8bb8\u613f\u6b21\u6570\u65f6\u7684\u5fc5\u5907\u7269\u54c1"

    .line 518
    .line 519
    goto :goto_3

    .line 520
    :pswitch_8
    const-string p1, "\u53ef\u4ee5\u5728\u4e16\u754c\u9891\u9053\u8bf4\u8bdd"

    .line 521
    .line 522
    goto :goto_3

    .line 523
    :pswitch_9
    const-string p1, "\u9152\u9986\u62bd\u5361\u9053\u5177\uff0c\u53ef\u514d\u8d39\u8fdb\u884c\u4e00\u6b21\u91d1\u9152\u676f\u5341\u8fde\u62bd\u3002"

    .line 524
    .line 525
    goto :goto_3

    .line 526
    :pswitch_a
    const-string p1, "\u8d8a\u8001\u8d8a\u8981\u8865\u554a\uff0c\u5403\u4e00\u53e3\uff0c\u53ef\u77ac\u95f4\u6062\u590d40\u70b9\u4f53\u529b\u3002"

    .line 527
    .line 528
    goto :goto_3

    .line 529
    :pswitch_b
    const-string p1, "\u6b64\u7269\u53ef\u4e0e\u91d1\u5c06\u3001\u94f6\u5c06\u3001\u94dc\u5c06\u5bf9\u9152\uff0c\u5bf9\u9152\u65f6\u53ef\u76f4\u63a5\u8d2d\u4e70\uff0c\u6216\u5728\u5546\u57ce\u8d2d\u4e70\u3002"

    .line 530
    .line 531
    goto :goto_3

    .line 532
    :pswitch_c
    const-string p1, "\u6b64\u7269\u53ef\u4e0e\u795e\u5c06\u3001\u91d1\u5c06\u3001\u94f6\u5c06\u5bf9\u9152\uff0c\u5bf9\u9152\u65f6\u53ef\u76f4\u63a5\u8d2d\u4e70\uff0c\u6216\u5728\u5546\u57ce\u8d2d\u4e70\u3002"

    .line 533
    .line 534
    goto :goto_3

    .line 535
    :pswitch_d
    const-string p1, "\u6b64\u7269\u53ef\u4e0e\u795e\u5c06\u3001\u91d1\u5c06\u5bf9\u9152\uff0c\u5bf9\u9152\u65f6\u53ef\u76f4\u63a5\u8d2d\u4e70\uff0c\u6216\u5728\u5546\u57ce\u8d2d\u4e70\u3002"

    .line 536
    .line 537
    goto :goto_3

    .line 538
    :pswitch_e
    const-string p1, "\u60a8\u60f3\u66f4\u4e0e\u4f17\u4e0d\u540c\u4e00\u4e9b\u4e48\uff1f\u60a8\u60f3\u4f4e\u8c03\u7684\u6362\u4e2a\u8eab\u4efd\u5417\uff1f\u4f7f\u7528\u6211\u5c31\u53ef\u4ee5\u4e86\uff01"

    .line 539
    .line 540
    goto :goto_3

    .line 541
    :pswitch_f
    const-string p1, "\u6b66\u5c06\u4fee\u70bc\u4e0e\u7ec3\u5175\u6240\u9700\u7684\u73cd\u8d35\u9053\u5177\u3002"

    .line 542
    .line 543
    goto :goto_3

    .line 544
    :pswitch_10
    const-string p1, "\u6b66\u5c06\u4fee\u70bc\u5fc5\u5907\uff0c\u53ef\u8c03\u6574\u6b66\u5c06\u5c5e\u6027\u3002\u5929\u68af\u4e2d\u4f7f\u7528\u4ff8\u7984\u5151\u6362\uff0c\u6216\u5f00\u5b9d\u7bb1\u83b7\u5f97\u3002"

    .line 545
    .line 546
    goto :goto_3

    .line 547
    :pswitch_11
    const-string p1, "\u6b66\u5c06\u4f20\u627f\u5fc5\u5907\uff0c\u53ef\u4f20\u627f100%\u7684\u6b66\u5c06\u7ecf\u9a8c\uff0c\u540c\u65f6\u8fd4\u8fd8\u6210\u529f\u4fee\u70bc\u6240\u7528\u7075\u829d\u3002"

    .line 548
    .line 549
    goto :goto_3

    .line 550
    :pswitch_12
    const-string p1, "\u6b66\u5c06\u4f20\u627f\u5fc5\u5907\uff0c\u53ef\u4f20\u627f100%\u7684\u6b66\u5c06\u7ecf\u9a8c\u3002"

    .line 551
    .line 552
    goto :goto_3

    .line 553
    :pswitch_13
    const-string p1, "\u6b66\u5c06\u4f20\u627f\u5fc5\u5907\uff0c\u53ef\u4f20\u627f80%\u7684\u6b66\u5c06\u7ecf\u9a8c\u3002"

    .line 554
    .line 555
    goto :goto_3

    .line 556
    :pswitch_14
    const-string p1, "\u70ed\u4e4e\u4e4e\u7684\u7ea2\u8336\uff0c\u4f7f\u7528\u540e\u6062\u590d\u7cbe\u529b\u3002"

    .line 557
    .line 558
    goto :goto_3

    .line 559
    :pswitch_15
    const-string p1, "\u9999\u55b7\u55b7\u7684\u5305\u5b50\uff0c\u4f7f\u7528\u540e\u6062\u590d\u4f53\u529b\u3002"

    .line 560
    .line 561
    goto :goto_3

    .line 562
    :pswitch_16
    const-string p1, "\u7528\u4e8e\u5f00\u542f\u94dc\u5b9d\u7bb1\u3002"

    .line 563
    .line 564
    goto :goto_3

    .line 565
    :pswitch_17
    const-string p1, "\u7528\u4e8e\u5f00\u542f\u94f6\u5b9d\u7bb1\u3002"

    .line 566
    .line 567
    goto :goto_3

    .line 568
    :pswitch_18
    const-string p1, "\u7528\u4e8e\u5f00\u542f\u91d1\u5b9d\u7bb1\u3002"

    .line 569
    .line 570
    goto :goto_3

    .line 571
    :pswitch_19
    const-string p1, "\u53ef\u5f00\u542f\u83b7\u5f97\u968f\u673a\u9053\u5177\uff0c\u9700\u8981\u94dc\u94a5\u5319\u6253\u5f00\u3002"

    .line 572
    .line 573
    goto :goto_3

    .line 574
    :pswitch_1a
    const-string p1, "\u53ef\u5f00\u542f\u83b7\u5f97\u968f\u673a\u9053\u5177\uff0c\u9700\u8981\u94f6\u94a5\u5319\u6253\u5f00\u3002"

    .line 575
    .line 576
    goto :goto_3

    .line 577
    :pswitch_1b
    const-string p1, "\u53ef\u5f00\u542f\u83b7\u5f97\u968f\u673a\u9053\u5177\uff0c\u9700\u8981\u91d1\u94a5\u5319\u6253\u5f00\u3002"

    .line 578
    .line 579
    goto :goto_3

    .line 580
    :pswitch_1c
    const-string p1, "\u53ef\u7528\u4e8e\u63d0\u5347\u6b66\u5c06\u7ecf\u9a8c\u3002"

    .line 581
    .line 582
    :goto_3
    move-object v1, p1

    .line 583
    :cond_22
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    if-eqz p1, :cond_24

    .line 588
    .line 589
    if-nez p2, :cond_23

    .line 590
    .line 591
    move-object p2, v0

    .line 592
    :cond_23
    move-object v1, p2

    .line 593
    :cond_24
    return-object v1

    .line 594
    nop

    .line 595
    :sswitch_data_0
    .sparse-switch
        0x5a171d43 -> :sswitch_1d
        0x5a180601 -> :sswitch_1c
        0x5ee0a5bb -> :sswitch_1b
        0x5ee0a5bc -> :sswitch_1a
        0x5ee0a5bd -> :sswitch_19
        0x5ee0a5be -> :sswitch_18
        0x5ee0a5bf -> :sswitch_17
        0x5ee0a5c0 -> :sswitch_16
        0x5ee0a5c1 -> :sswitch_15
        0x5ee0a5c2 -> :sswitch_14
        0x5ee0a5c3 -> :sswitch_13
        0x5ee0a5d9 -> :sswitch_12
        0x5ee0a5da -> :sswitch_11
        0x5ee0a5db -> :sswitch_10
        0x5ee0a5dc -> :sswitch_f
        0x5ee0a5dd -> :sswitch_e
        0x5ee0a5fb -> :sswitch_d
        0x5ee0a5fc -> :sswitch_c
        0x5ee0a5fd -> :sswitch_b
        0x5ee0a600 -> :sswitch_a
        0x5ee0a619 -> :sswitch_9
        0x5ee0a61d -> :sswitch_8
        0x5ee0a61e -> :sswitch_7
        0x5ee0a679 -> :sswitch_6
        0x5ee0a699 -> :sswitch_5
        0x5ee0a69a -> :sswitch_4
        0x5ee0a69b -> :sswitch_3
        0x6114d5aa -> :sswitch_2
        0x6114d9a1 -> :sswitch_1
        0x6114e12b -> :sswitch_0
    .end sparse-switch

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final S(ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const-string v4, "1"

    .line 27
    .line 28
    const/4 v5, 0x5

    .line 29
    const/4 v6, 0x1

    .line 30
    const/16 v7, 0xa

    .line 31
    .line 32
    if-eqz v3, :cond_7

    .line 33
    .line 34
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    array-length v9, v8

    .line 54
    if-gt v9, v7, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    aget-wide v7, v8, v7

    .line 58
    .line 59
    int-to-double v9, p1

    .line 60
    cmpl-double v7, v7, v9

    .line 61
    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    if-ne p1, v6, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-eqz v6, :cond_0

    .line 72
    .line 73
    invoke-static {v4, v6}, Lcom/sgscq/vpn/w1;->p1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    if-ne p1, v5, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    iget-object v2, p0, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 99
    .line 100
    if-nez p2, :cond_8

    .line 101
    .line 102
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Ljava/lang/String;

    .line 115
    .line 116
    return-object p2

    .line 117
    :cond_8
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :cond_9
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_f

    .line 130
    .line 131
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-nez v8, :cond_a

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_a
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    if-eqz v8, :cond_9

    .line 149
    .line 150
    array-length v9, v8

    .line 151
    if-gt v9, v7, :cond_b

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_b
    aget-wide v9, v8, v7

    .line 155
    .line 156
    int-to-double v11, p1

    .line 157
    cmpl-double v8, v9, v11

    .line 158
    .line 159
    if-eqz v8, :cond_c

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_c
    if-ne p1, v6, :cond_d

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    if-eqz v8, :cond_9

    .line 169
    .line 170
    invoke-static {v4, v8}, Lcom/sgscq/vpn/w1;->p1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-nez v8, :cond_d

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_d
    if-ne p1, v5, :cond_e

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-nez p2, :cond_10

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    .line 204
    return-object p2

    .line 205
    :catch_0
    move-exception p2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v1, "[Wine] Error loading grade "

    .line 209
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string p1, " pool: "

    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p1, "SGSCQ_SRV"

    .line 222
    .line 223
    invoke-static {p2, v0, p1}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_10
    invoke-virtual {p0}, Lcom/sgscq/vpn/handler/x0;->R()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    return-object p1
.end method

.method public final T(ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 2
    .line 3
    const v1, 0x24dd8

    .line 4
    .line 5
    .line 6
    const v2, 0x186a0

    .line 7
    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    iget-object v4, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x3

    .line 15
    if-eq p1, v5, :cond_d

    .line 16
    .line 17
    if-eq p1, v6, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/sgscq/vpn/handler/x0;->R()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object p1, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_5

    .line 48
    .line 49
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v8}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_1

    .line 60
    .line 61
    invoke-static {p1, v8}, Lcom/sgscq/vpn/handler/x0;->v0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1, v8}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    if-eqz v9, :cond_1

    .line 73
    .line 74
    array-length v10, v9

    .line 75
    if-gt v10, v3, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    aget-wide v10, v9, v3

    .line 79
    .line 80
    double-to-int v9, v10

    .line 81
    if-eq v9, v6, :cond_4

    .line 82
    .line 83
    if-ne v9, v5, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_1

    .line 90
    .line 91
    :cond_4
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const/16 v5, 0x14

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-nez v5, :cond_b

    .line 102
    .line 103
    new-instance v5, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_a

    .line 117
    .line 118
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-lt v7, v2, :cond_6

    .line 129
    .line 130
    if-lt v7, v1, :cond_7

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    invoke-virtual {p1, v6}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    if-eqz v7, :cond_6

    .line 138
    .line 139
    array-length v8, v7

    .line 140
    if-gt v8, v3, :cond_8

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    aget-wide v8, v7, v3

    .line 144
    .line 145
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 146
    .line 147
    cmpl-double v8, v8, v10

    .line 148
    .line 149
    if-eqz v8, :cond_9

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_9
    const/4 v8, 0x4

    .line 153
    aget-wide v8, v7, v8

    .line 154
    .line 155
    const-wide v10, 0x4083d80000000000L    # 635.0

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    cmpg-double v7, v8, v10

    .line 161
    .line 162
    if-gtz v7, :cond_6

    .line 163
    .line 164
    invoke-static {p1, v6}, Lcom/sgscq/vpn/handler/x0;->v0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-nez v7, :cond_6

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-le p1, v3, :cond_b

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    goto :goto_2

    .line 193
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_c

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_c
    invoke-virtual {p0}, Lcom/sgscq/vpn/handler/x0;->R()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    :goto_3
    return-object p1

    .line 219
    :cond_d
    const-string p1, "SGSCQ_SRV"

    .line 220
    .line 221
    const-string v5, "[Wine] Gold pool: new god general "

    .line 222
    .line 223
    :try_start_0
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 224
    .line 225
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-nez v6, :cond_15

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 236
    .line 237
    .line 238
    move-result-wide v6

    .line 239
    const-wide v8, 0x3fd3333333333333L    # 0.3

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    cmpg-double v6, v6, v8

    .line 245
    .line 246
    if-gez v6, :cond_e

    .line 247
    .line 248
    invoke-virtual {p0, v4, p2}, Lcom/sgscq/vpn/handler/x0;->U(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    if-eqz v6, :cond_e

    .line 253
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p1, p2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-eqz v6, :cond_14

    .line 277
    .line 278
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    check-cast v6, Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-lt v7, v2, :cond_f

    .line 289
    .line 290
    if-lt v7, v1, :cond_10

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_10
    invoke-virtual {v4, v6}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    if-eqz v7, :cond_f

    .line 298
    .line 299
    array-length v8, v7

    .line 300
    if-gt v8, v3, :cond_11

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_11
    aget-wide v8, v7, v3

    .line 304
    .line 305
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 306
    .line 307
    cmpl-double v7, v8, v10

    .line 308
    .line 309
    if-eqz v7, :cond_12

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_12
    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/x0;->v0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-eqz v7, :cond_13

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_13
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    if-nez p2, :cond_15

    .line 328
    .line 329
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    :goto_5
    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    .line 334
    .line 335
    .line 336
    move-result p2

    .line 337
    goto :goto_7

    .line 338
    :cond_15
    new-instance v5, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    :cond_16
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_18

    .line 356
    .line 357
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-nez v2, :cond_17

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_17
    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    if-eqz v2, :cond_16

    .line 375
    .line 376
    array-length v6, v2

    .line 377
    if-le v6, v3, :cond_16

    .line 378
    .line 379
    aget-wide v6, v2, v3

    .line 380
    .line 381
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 382
    .line 383
    cmpl-double v2, v6, v8

    .line 384
    .line 385
    if-nez v2, :cond_16

    .line 386
    .line 387
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result p2

    .line 395
    if-nez p2, :cond_19

    .line 396
    .line 397
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 398
    .line 399
    .line 400
    move-result p2

    .line 401
    goto :goto_5

    .line 402
    :goto_7
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    move-object v6, p2

    .line 407
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .line 409
    goto :goto_8

    .line 410
    :catch_0
    move-exception p2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v1, "[Wine] Error loading gold pool: "

    .line 414
    .line 415
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-static {p2, v0, p1}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :cond_19
    invoke-virtual {p0}, Lcom/sgscq/vpn/handler/x0;->R()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    :goto_8
    return-object v6
.end method

.method public final U(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_8

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v3, Lcom/sgscq/vpn/w1;->U:Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1, v2}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const-string v4, "1"

    .line 61
    .line 62
    invoke-static {v4, v3}, Lcom/sgscq/vpn/w1;->p1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    invoke-virtual {p1, v2}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    array-length v4, v3

    .line 76
    const/16 v5, 0xa

    .line 77
    .line 78
    if-gt v4, v5, :cond_6

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    aget-wide v4, v3, v5

    .line 82
    .line 83
    double-to-int v3, v4

    .line 84
    const/4 v4, 0x1

    .line 85
    if-eq v3, v4, :cond_7

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_9

    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    return-object p1

    .line 100
    :cond_9
    iget-object p1, p0, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/String;

    .line 115
    .line 116
    return-object p1
.end method

.method public final X(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12

    .line 1
    const-string v0, "0"

    const-string v1, "grade"

    const-string v2, "resource_id"

    const-string v3, ""

    const-string v4, "dialogname"

    iget-object v5, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, v5, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    :goto_0
    invoke-static {v5}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v5

    const/4 v6, 0x5

    :try_start_0
    invoke-virtual {v5, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v8, p1

    :goto_1
    :try_start_1
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_2
    move-object v8, p1

    :cond_3
    move v7, v6

    :goto_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "01"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sgscq/vpn/w1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-object v8, p1

    :catch_1
    move v7, v6

    :catch_2
    move-object v4, v3

    :goto_3
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "general_level"

    invoke-virtual {p2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "pk_id"

    invoke-virtual {p2, v10, p1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "general_naturalskill_id"

    invoke-virtual {p2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_quality"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_star"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general_painting_id"

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, p1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    array-length v2, p1

    const/16 v4, 0x8

    if-le v2, v4, :cond_4

    aget-wide v7, p1, v1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "base_hp"

    invoke-virtual {p2, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v7, p1, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "base_attack"

    invoke-virtual {p2, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "base_defense"

    invoke-virtual {p2, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "base_wisdom"

    invoke-virtual {p2, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v5, p1, v6

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "general_hp_step"

    invoke-virtual {p2, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    aget-wide v5, p1, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "general_attack_step"

    invoke-virtual {p2, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    aget-wide v5, p1, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "general_defense_step"

    invoke-virtual {p2, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string v2, "general_wisdom_step"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p1, "general_status"

    const-string v2, "1"

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "major_pk_id"

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "talent_point"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "culture_info"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ganoderma_num"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "breachLevel"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "insight_level"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lieutenant_skill_id"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ls_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ls_value"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 8
    .line 9
    :goto_0
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->A(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final c(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;IIII)V
    .locals 23

    move/from16 v0, p6

    move/from16 v1, p3

    move/from16 v9, p8

    if-le v9, v1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "purchased_lingzhi_goods"

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/util/Map;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Ljava/util/Map;

    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "day"

    .line 2
    invoke-static {v1, v4, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "counts"

    .line 3
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/util/Map;

    if-nez v3, :cond_4

    :goto_0
    move-object/from16 v3, p4

    move v8, v2

    goto :goto_1

    :cond_4
    check-cast v1, Ljava/util/Map;

    move-object/from16 v3, p4

    .line 4
    invoke-static {v1, v3, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    move v8, v1

    :goto_1
    const-string v4, "600012"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u7075\u829d\u793c\u5305"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, p0

    move/from16 v1, p7

    invoke-virtual {v10, v1}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v6, p5

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/handler/x0;->l(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "item_num"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "num"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8d2d\u4e70\u540e\u83b7\u5f97"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u7075\u829d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item_desc"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "item_id"

    const-string v12, "600012"

    const-string v13, "num"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "item_num"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "type"

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "item_type"

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "level"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    filled-new-array/range {v11 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "600012"

    invoke-static {v2, v3, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "add_list"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    move-object v0, p2

    move-object v3, p5

    .line 1
    invoke-static {p5, p2}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    move-result v7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v4, p6

    move/from16 v5, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->l(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    move v0, p3

    move/from16 v1, p8

    if-le v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object v1, p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_purchased"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final i0(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "wine."

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 14
    .line 15
    const/16 v5, 0xa

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    const-string v8, "user_gold"

    .line 20
    .line 21
    const-string v9, "general_id"

    .line 22
    .line 23
    const-string v10, "price"

    .line 24
    .line 25
    const-string v11, "result"

    .line 26
    .line 27
    const-string v12, "cmn"

    .line 28
    .line 29
    const-string v13, "pk_id"

    .line 30
    .line 31
    const-string v14, "id"

    .line 32
    .line 33
    const-string v15, "ret"

    .line 34
    .line 35
    if-eqz v3, :cond_16

    .line 36
    .line 37
    const-string v3, "wine.wineInfo"

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    move-object/from16 v39, v5

    .line 56
    .line 57
    const-string v5, "SGSCQ_SRV"

    .line 58
    .line 59
    move-object/from16 v17, v7

    .line 60
    .line 61
    const-string v7, "wine_info"

    .line 62
    .line 63
    if-eqz v3, :cond_8

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    const-string v13, "wine_gold_time"

    .line 82
    .line 83
    const/16 v14, 0x708

    .line 84
    .line 85
    invoke-static {v3, v13, v9, v10, v14}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const-string v14, "wine_silver_time"

    .line 90
    .line 91
    move/from16 p1, v13

    .line 92
    .line 93
    const/16 v13, 0x258

    .line 94
    .line 95
    invoke-static {v3, v14, v9, v10, v13}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    const-string v14, "wine_copper_time"

    .line 100
    .line 101
    move/from16 p2, v13

    .line 102
    .line 103
    const/16 v13, 0x12c

    .line 104
    .line 105
    invoke-static {v3, v14, v9, v10, v13}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    move/from16 v16, p1

    .line 110
    .line 111
    move/from16 v18, p2

    .line 112
    .line 113
    move/from16 v20, v9

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const/4 v13, 0x0

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v10, 0x0

    .line 119
    move/from16 v18, v9

    .line 120
    .line 121
    move/from16 v20, v10

    .line 122
    .line 123
    move/from16 v16, v13

    .line 124
    .line 125
    :goto_0
    if-nez v16, :cond_1

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    const/4 v9, 0x0

    .line 130
    :goto_1
    move/from16 v17, v9

    .line 131
    .line 132
    if-nez v18, :cond_2

    .line 133
    .line 134
    const/4 v9, 0x1

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    const/4 v9, 0x0

    .line 137
    :goto_2
    move/from16 v19, v9

    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->F()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v24

    .line 143
    invoke-static {v3}, Lcom/sgscq/vpn/handler/x0;->t0(Ljava/util/Map;)Z

    .line 144
    .line 145
    .line 146
    move-result v23

    .line 147
    if-eqz v3, :cond_3

    .line 148
    .line 149
    const-string v9, "gold_wine_count"

    .line 150
    .line 151
    const/4 v10, 0x0

    .line 152
    invoke-virtual {v4, v10, v9, v3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    goto :goto_3

    .line 157
    :cond_3
    const/4 v10, 0x0

    .line 158
    move v9, v10

    .line 159
    :goto_3
    if-eqz v3, :cond_4

    .line 160
    .line 161
    const-string v13, "gold_guarantee_phase"

    .line 162
    .line 163
    invoke-virtual {v4, v10, v13, v3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    const/4 v13, 0x1

    .line 168
    goto :goto_4

    .line 169
    :cond_4
    const/4 v13, 0x1

    .line 170
    const/4 v10, 0x0

    .line 171
    :goto_4
    if-gt v10, v13, :cond_5

    .line 172
    .line 173
    const/4 v10, 0x4

    .line 174
    goto :goto_5

    .line 175
    :cond_5
    const/16 v10, 0xa

    .line 176
    .line 177
    :goto_5
    add-int/2addr v9, v13

    .line 178
    rem-int/2addr v9, v10

    .line 179
    sub-int v9, v10, v9

    .line 180
    .line 181
    if-ne v9, v10, :cond_6

    .line 182
    .line 183
    const/4 v9, 0x0

    .line 184
    :cond_6
    move/from16 v21, v9

    .line 185
    .line 186
    move/from16 v22, v10

    .line 187
    .line 188
    invoke-static/range {v16 .. v24}, Lcom/sgscq/vpn/handler/x0;->C(IIIIIIIILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v13, "error_code"

    .line 198
    .line 199
    invoke-interface {v10, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-interface {v10, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    const-string v13, "code"

    .line 206
    .line 207
    invoke-interface {v10, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    const-string v6, "msg"

    .line 216
    .line 217
    const-string v11, "success"

    .line 218
    .line 219
    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    if-eqz v3, :cond_7

    .line 226
    .line 227
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 228
    .line 229
    .line 230
    move-result-wide v6

    .line 231
    long-to-int v6, v6

    .line 232
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    int-to-long v13, v7

    .line 237
    invoke-virtual {v4, v13, v14, v3}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v13

    .line 241
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    invoke-static {v7, v8, v3}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    const-string v8, "user_energy"

    .line 250
    .line 251
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    invoke-static {v9, v8, v3}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    const-string v9, "user_power"

    .line 260
    .line 261
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    invoke-static {v11, v9, v3}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    new-instance v11, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v15, "[Wine] uid="

    .line 272
    .line 273
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v15, " coin="

    .line 280
    .line 281
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v15, " gold="

    .line 288
    .line 289
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v15, " energy="

    .line 296
    .line 297
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v15, " power="

    .line 304
    .line 305
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    invoke-static {v5, v11}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v5, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 319
    .line 320
    move-object/from16 v18, v5

    .line 321
    .line 322
    move/from16 v19, v6

    .line 323
    .line 324
    move/from16 v20, v7

    .line 325
    .line 326
    move/from16 v21, v8

    .line 327
    .line 328
    move/from16 v22, v9

    .line 329
    .line 330
    move-wide/from16 v23, v13

    .line 331
    .line 332
    move-object/from16 v25, v1

    .line 333
    .line 334
    move-object/from16 v26, v3

    .line 335
    .line 336
    invoke-virtual/range {v18 .. v26}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    new-instance v5, Lorg/json/JSONObject;

    .line 341
    .line 342
    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 343
    .line 344
    .line 345
    const/4 v1, 0x0

    .line 346
    new-array v1, v1, [Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v2, v3, v5, v1}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-interface {v10, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    :cond_7
    invoke-static {v10}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    goto/16 :goto_a

    .line 368
    .line 369
    :cond_8
    const-string v3, "wine.wine"

    .line 370
    .line 371
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_9

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/x0;->n0(Ljava/util/Map;)[B

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    goto/16 :goto_a

    .line 382
    .line 383
    :cond_9
    const-string v3, "wine.wineGeneralInfo"

    .line 384
    .line 385
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_15

    .line 390
    .line 391
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iget-object v2, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 396
    .line 397
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    iget-object v2, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 402
    .line 403
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    new-instance v3, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 413
    .line 414
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v11

    .line 425
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    if-eqz v12, :cond_13

    .line 430
    .line 431
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    check-cast v12, Ljava/lang/String;

    .line 436
    .line 437
    if-eqz v12, :cond_11

    .line 438
    .line 439
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 440
    .line 441
    .line 442
    move-result v16

    .line 443
    if-eqz v16, :cond_a

    .line 444
    .line 445
    move-object/from16 p1, v11

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_a
    move-object/from16 p1, v11

    .line 449
    .line 450
    sget-object v11, Lcom/sgscq/vpn/w1;->U:Ljava/util/HashSet;

    .line 451
    .line 452
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    if-eqz v11, :cond_b

    .line 457
    .line 458
    goto :goto_7

    .line 459
    :cond_b
    invoke-virtual {v2, v12}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v11

    .line 463
    if-nez v11, :cond_c

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_c
    invoke-virtual {v2, v12}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    if-nez v11, :cond_d

    .line 471
    .line 472
    goto :goto_7

    .line 473
    :cond_d
    const-string v0, "1"

    .line 474
    .line 475
    invoke-static {v0, v11}, Lcom/sgscq/vpn/w1;->p1(Ljava/lang/String;Ljava/util/Map;)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_e

    .line 480
    .line 481
    :goto_7
    move-object/from16 v46, v4

    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_e
    const-string v0, "grade"

    .line 485
    .line 486
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v11

    .line 490
    move-object/from16 v46, v4

    .line 491
    .line 492
    const/4 v4, 0x0

    .line 493
    invoke-static {v11, v4}, Lcom/sgscq/vpn/handler/x0;->C0(Ljava/lang/Object;I)I

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    const/4 v11, 0x1

    .line 498
    if-lt v4, v11, :cond_12

    .line 499
    .line 500
    const/4 v11, 0x4

    .line 501
    if-le v4, v11, :cond_f

    .line 502
    .line 503
    goto :goto_8

    .line 504
    :cond_f
    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v11

    .line 508
    if-nez v11, :cond_10

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_10
    invoke-static {v9, v12, v14, v12}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 512
    .line 513
    .line 514
    move-result-object v11

    .line 515
    invoke-static {v11, v13, v12, v4, v0}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const-string v0, "general_name"

    .line 519
    .line 520
    invoke-virtual {v2, v12}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_8

    .line 531
    :cond_11
    move-object/from16 v46, v4

    .line 532
    .line 533
    move-object/from16 p1, v11

    .line 534
    .line 535
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    .line 536
    .line 537
    move-object/from16 v11, p1

    .line 538
    .line 539
    move-object/from16 v4, v46

    .line 540
    .line 541
    goto :goto_6

    .line 542
    :cond_13
    move-object/from16 v46, v4

    .line 543
    .line 544
    new-instance v0, Lcom/sgscq/vpn/n1;

    .line 545
    .line 546
    const/4 v2, 0x6

    .line 547
    invoke-direct {v0, v2}, Lcom/sgscq/vpn/n1;-><init>(I)V

    .line 548
    .line 549
    .line 550
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    new-instance v2, Lcom/sgscq/vpn/n1;

    .line 555
    .line 556
    const/4 v4, 0x7

    .line 557
    invoke-direct {v2, v4}, Lcom/sgscq/vpn/n1;-><init>(I)V

    .line 558
    .line 559
    .line 560
    invoke-interface {v0, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 565
    .line 566
    .line 567
    const-string v16, "code"

    .line 568
    .line 569
    const-string v18, "result"

    .line 570
    .line 571
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 572
    .line 573
    const-string v20, "msg"

    .line 574
    .line 575
    const-string v21, "success"

    .line 576
    .line 577
    const-string v22, "error_code"

    .line 578
    .line 579
    const-string v24, "wine_info"

    .line 580
    .line 581
    const-string v26, "show_general_list"

    .line 582
    .line 583
    const-string v28, "gold_info"

    .line 584
    .line 585
    const/16 v0, 0x10c

    .line 586
    .line 587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    const-string v4, "free_times"

    .line 592
    .line 593
    move-object/from16 v8, v17

    .line 594
    .line 595
    filled-new-array {v4, v8, v10, v2}, [Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    const-string v9, "free_end_time"

    .line 600
    .line 601
    invoke-static {v9, v6, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 602
    .line 603
    .line 604
    move-result-object v29

    .line 605
    const-string v30, "silver_info"

    .line 606
    .line 607
    const/16 v2, 0x64

    .line 608
    .line 609
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    filled-new-array {v4, v8, v10, v2}, [Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-static {v9, v6, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 618
    .line 619
    .line 620
    move-result-object v31

    .line 621
    const-string v32, "copper_info"

    .line 622
    .line 623
    move-object/from16 v2, v39

    .line 624
    .line 625
    filled-new-array {v4, v8, v10, v2}, [Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-static {v9, v6, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 630
    .line 631
    .line 632
    move-result-object v33

    .line 633
    const-string v34, "gold_price"

    .line 634
    .line 635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v35

    .line 639
    const-string v36, "silver_price"

    .line 640
    .line 641
    const/16 v0, 0x64

    .line 642
    .line 643
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 644
    .line 645
    .line 646
    move-result-object v37

    .line 647
    const-string v38, "copper_price"

    .line 648
    .line 649
    const-string v40, "need_times"

    .line 650
    .line 651
    const/4 v0, 0x5

    .line 652
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v41

    .line 656
    const-string v42, "first_time_consume_gold"

    .line 657
    .line 658
    invoke-static {v1}, Lcom/sgscq/vpn/handler/x0;->t0(Ljava/util/Map;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 663
    .line 664
    .line 665
    move-result-object v43

    .line 666
    const-string v44, "multi_price"

    .line 667
    .line 668
    const/16 v0, 0xa78

    .line 669
    .line 670
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 671
    .line 672
    .line 673
    move-result-object v45

    .line 674
    move-object/from16 v17, v6

    .line 675
    .line 676
    move-object/from16 v23, v6

    .line 677
    .line 678
    move-object/from16 v25, v3

    .line 679
    .line 680
    move-object/from16 v27, v3

    .line 681
    .line 682
    filled-new-array/range {v16 .. v45}, [Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-static {v15, v6, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    instance-of v2, v1, Ljava/util/List;

    .line 695
    .line 696
    if-eqz v2, :cond_14

    .line 697
    .line 698
    check-cast v1, Ljava/util/List;

    .line 699
    .line 700
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    goto :goto_9

    .line 705
    :cond_14
    const/4 v1, 0x0

    .line 706
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    const-string v3, "[WineGeneralInfo] preview_generals="

    .line 709
    .line 710
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-static {v5, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    move-object/from16 v3, v46

    .line 728
    .line 729
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    goto :goto_a

    .line 734
    :cond_15
    move-object v3, v4

    .line 735
    const-string v16, "code"

    .line 736
    .line 737
    const-string v18, "result"

    .line 738
    .line 739
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 740
    .line 741
    const-string v20, "msg"

    .line 742
    .line 743
    const-string v21, "success"

    .line 744
    .line 745
    const-string v22, "error_code"

    .line 746
    .line 747
    move-object/from16 v17, v6

    .line 748
    .line 749
    move-object/from16 v23, v6

    .line 750
    .line 751
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-static {v15, v6, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    :goto_a
    return-object v1

    .line 768
    :cond_16
    move-object v3, v4

    .line 769
    const-string v0, "wish.info"

    .line 770
    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    const-string v4, "add"

    .line 776
    .line 777
    const-string v5, "upd"

    .line 778
    .line 779
    const-string v6, "del"

    .line 780
    .line 781
    const-string v7, "GeneralSoul"

    .line 782
    .line 783
    const/16 v16, -0x1

    .line 784
    .line 785
    move-object/from16 v17, v8

    .line 786
    .line 787
    const-string v8, "wish.get"

    .line 788
    .line 789
    const/16 v18, 0x0

    .line 790
    .line 791
    move-object/from16 v19, v9

    .line 792
    .line 793
    const-string v9, "delta_data"

    .line 794
    .line 795
    move-object/from16 v20, v6

    .line 796
    .line 797
    const-string v6, "add_list"

    .line 798
    .line 799
    move-object/from16 v21, v4

    .line 800
    .line 801
    const-string v4, "Item"

    .line 802
    .line 803
    move-object/from16 v22, v5

    .line 804
    .line 805
    const-string v5, ""

    .line 806
    .line 807
    if-nez v0, :cond_45

    .line 808
    .line 809
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-eqz v0, :cond_17

    .line 814
    .line 815
    goto/16 :goto_25

    .line 816
    .line 817
    :cond_17
    const-string v0, "mystery."

    .line 818
    .line 819
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    if-eqz v0, :cond_18

    .line 824
    .line 825
    const/4 v0, 0x0

    .line 826
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    const-string v4, "code"

    .line 831
    .line 832
    const-string v6, "result"

    .line 833
    .line 834
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 835
    .line 836
    const-string v8, "msg"

    .line 837
    .line 838
    const-string v9, "success"

    .line 839
    .line 840
    const-string v10, "error_code"

    .line 841
    .line 842
    move-object v5, v0

    .line 843
    move-object v11, v0

    .line 844
    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    invoke-static {v15, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    return-object v0

    .line 861
    :cond_18
    const-string v0, "spiritStoneGoods."

    .line 862
    .line 863
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 864
    .line 865
    .line 866
    move-result v0

    .line 867
    const-string v8, "600213"

    .line 868
    .line 869
    move-object/from16 v23, v12

    .line 870
    .line 871
    const-string v12, "cmn_modules"

    .line 872
    .line 873
    move-object/from16 v24, v7

    .line 874
    .line 875
    const-string v7, "item_info"

    .line 876
    .line 877
    move-object/from16 v25, v11

    .line 878
    .line 879
    const-string v11, "item_id"

    .line 880
    .line 881
    if-eqz v0, :cond_33

    .line 882
    .line 883
    const-string v0, "spiritStoneGoods.getList"

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-eqz v0, :cond_1e

    .line 890
    .line 891
    iget-object v0, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 892
    .line 893
    if-eqz v3, :cond_1a

    .line 894
    .line 895
    iget-object v1, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 896
    .line 897
    if-nez v1, :cond_19

    .line 898
    .line 899
    goto :goto_b

    .line 900
    :cond_19
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->a()I

    .line 901
    .line 902
    .line 903
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    goto :goto_c

    .line 905
    :catch_0
    :cond_1a
    :goto_b
    const/4 v1, 0x0

    .line 906
    :goto_c
    iget-object v4, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 907
    .line 908
    if-nez v4, :cond_1b

    .line 909
    .line 910
    goto :goto_d

    .line 911
    :cond_1b
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    if-eqz v2, :cond_1d

    .line 916
    .line 917
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 918
    .line 919
    .line 920
    move-result v5

    .line 921
    if-eqz v5, :cond_1c

    .line 922
    .line 923
    goto :goto_d

    .line 924
    :cond_1c
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 925
    .line 926
    .line 927
    move-result-object v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 928
    :catch_1
    :cond_1d
    :goto_d
    move-object/from16 v2, v18

    .line 929
    .line 930
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/handler/x0;->B(Landroid/content/Context;ILjava/util/Map;)Ljava/util/ArrayList;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    const-string v1, "list"

    .line 939
    .line 940
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    const-string v1, "item_list"

    .line 944
    .line 945
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    const-string v1, "goods_list"

    .line 949
    .line 950
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    goto :goto_e

    .line 958
    :cond_1e
    const-string v0, "spiritStoneGoods.buy"

    .line 959
    .line 960
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v0

    .line 964
    if-eqz v0, :cond_32

    .line 965
    .line 966
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    iget-object v1, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 971
    .line 972
    move-object/from16 v17, v12

    .line 973
    .line 974
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 975
    .line 976
    .line 977
    move-result-object v12

    .line 978
    if-nez v12, :cond_1f

    .line 979
    .line 980
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    const-string v4, "code"

    .line 985
    .line 986
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 987
    .line 988
    .line 989
    move-result-object v5

    .line 990
    const-string v6, "result"

    .line 991
    .line 992
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 993
    .line 994
    const-string v8, "msg"

    .line 995
    .line 996
    const-string v9, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    .line 997
    .line 998
    const-string v10, "error_code"

    .line 999
    .line 1000
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v11

    .line 1004
    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    invoke-static {v15, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    :goto_e
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    move-object/from16 v10, p0

    .line 1021
    .line 1022
    goto/16 :goto_1d

    .line 1023
    .line 1024
    :cond_1f
    if-eqz v3, :cond_21

    .line 1025
    .line 1026
    iget-object v15, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1027
    .line 1028
    if-nez v15, :cond_20

    .line 1029
    .line 1030
    goto :goto_f

    .line 1031
    :cond_20
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->a()I

    .line 1032
    .line 1033
    .line 1034
    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1035
    goto :goto_10

    .line 1036
    :catch_2
    :cond_21
    :goto_f
    const/4 v15, 0x0

    .line 1037
    :goto_10
    move-object/from16 p1, v0

    .line 1038
    .line 1039
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    move-object/from16 v19, v1

    .line 1044
    .line 1045
    iget-object v1, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1046
    .line 1047
    invoke-static {v1, v15, v12}, Lcom/sgscq/vpn/handler/x0;->B(Landroid/content/Context;ILjava/util/Map;)Ljava/util/ArrayList;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v1

    .line 1051
    move-object/from16 v46, v3

    .line 1052
    .line 1053
    const-string v3, "item_advanced_id"

    .line 1054
    .line 1055
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    check-cast v3, Ljava/lang/String;

    .line 1060
    .line 1061
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v3

    .line 1065
    check-cast v3, Ljava/lang/String;

    .line 1066
    .line 1067
    const-string v5, "goods_id"

    .line 1068
    .line 1069
    filled-new-array {v11, v5, v14}, [Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v5

    .line 1073
    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/x0;->f0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v1

    .line 1081
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1082
    .line 1083
    .line 1084
    move-result v5

    .line 1085
    if-eqz v5, :cond_25

    .line 1086
    .line 1087
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v5

    .line 1091
    check-cast v5, Ljava/util/Map;

    .line 1092
    .line 1093
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v16

    .line 1097
    if-nez v16, :cond_23

    .line 1098
    .line 1099
    invoke-static {v5, v13, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v16

    .line 1103
    if-eqz v16, :cond_23

    .line 1104
    .line 1105
    goto :goto_11

    .line 1106
    :cond_23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1107
    .line 1108
    .line 1109
    move-result v16

    .line 1110
    if-nez v16, :cond_24

    .line 1111
    .line 1112
    invoke-static {v5, v11, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v16

    .line 1116
    if-eqz v16, :cond_24

    .line 1117
    .line 1118
    goto :goto_11

    .line 1119
    :cond_24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v16

    .line 1123
    if-nez v16, :cond_22

    .line 1124
    .line 1125
    invoke-static {v5, v14, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v16

    .line 1129
    if-eqz v16, :cond_22

    .line 1130
    .line 1131
    goto :goto_11

    .line 1132
    :cond_25
    move-object/from16 v5, v18

    .line 1133
    .line 1134
    :goto_11
    if-nez v5, :cond_26

    .line 1135
    .line 1136
    const-string v0, "\u5546\u54c1\u4e0d\u5b58\u5728"

    .line 1137
    .line 1138
    goto/16 :goto_13

    .line 1139
    .line 1140
    :cond_26
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    const-string v2, "item_num"

    .line 1149
    .line 1150
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    const/4 v3, 0x1

    .line 1155
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 1160
    .line 1161
    .line 1162
    move-result v2

    .line 1163
    const-string v3, "600094"

    .line 1164
    .line 1165
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v11

    .line 1169
    if-eqz v11, :cond_29

    .line 1170
    .line 1171
    const/4 v11, 0x0

    .line 1172
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    .line 1173
    .line 1174
    .line 1175
    move-result v11

    .line 1176
    const/4 v13, 0x6

    .line 1177
    if-lt v11, v13, :cond_27

    .line 1178
    .line 1179
    const/16 v11, 0xc8

    .line 1180
    .line 1181
    goto :goto_12

    .line 1182
    :cond_27
    mul-int/lit8 v11, v11, 0x14

    .line 1183
    .line 1184
    :goto_12
    if-gtz v11, :cond_28

    .line 1185
    .line 1186
    const-string v0, "\u7231\u53d1\u7535 LV1 \u53ca\u4ee5\u4e0a\u5f00\u653e\u864e\u775b\u77f3\u5151\u6362"

    .line 1187
    .line 1188
    goto :goto_13

    .line 1189
    :cond_28
    invoke-static {v12}, Lcom/sgscq/vpn/handler/x0;->q0(Ljava/util/Map;)I

    .line 1190
    .line 1191
    .line 1192
    move-result v13

    .line 1193
    add-int v14, v13, v2

    .line 1194
    .line 1195
    if-le v14, v11, :cond_29

    .line 1196
    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    const-string v1, "\u4eca\u65e5\u864e\u775b\u77f3\u5151\u6362\u53d7\u4e0a\u9650\u9650\u5236\uff08\u5df2\u5151 "

    .line 1200
    .line 1201
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    .line 1207
    const-string v1, "/"

    .line 1208
    .line 1209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    const-string v1, "\uff0c\u672c\u6b21\u9700 "

    .line 1216
    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    const-string v1, " \u4e2a\uff09"

    .line 1224
    .line 1225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    goto :goto_13

    .line 1233
    :cond_29
    const-string v11, "discount_price"

    .line 1234
    .line 1235
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v11

    .line 1239
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v10

    .line 1243
    const/4 v13, 0x0

    .line 1244
    invoke-static {v10, v13}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 1245
    .line 1246
    .line 1247
    move-result v10

    .line 1248
    invoke-static {v11, v10}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 1249
    .line 1250
    .line 1251
    move-result v10

    .line 1252
    invoke-static {v10, v8, v12}, Lcom/sgscq/vpn/handler/x0;->W0(ILjava/lang/String;Ljava/util/Map;)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v8

    .line 1256
    if-nez v8, :cond_2a

    .line 1257
    .line 1258
    const-string v0, "\u7075\u77f3\u4e0d\u8db3"

    .line 1259
    .line 1260
    :goto_13
    invoke-static {v0}, Lcom/sgscq/vpn/handler/x0;->W(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    goto/16 :goto_19

    .line 1265
    .line 1266
    :cond_2a
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v8

    .line 1270
    if-eqz v8, :cond_2e

    .line 1271
    .line 1272
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v8

    .line 1276
    if-eqz v8, :cond_2e

    .line 1277
    .line 1278
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 1279
    .line 1280
    .line 1281
    move-result v10

    .line 1282
    if-eqz v10, :cond_2b

    .line 1283
    .line 1284
    goto :goto_16

    .line 1285
    :cond_2b
    const-string v10, "purchased_spirit_stone_goods"

    .line 1286
    .line 1287
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v11

    .line 1291
    instance-of v13, v11, Ljava/util/Map;

    .line 1292
    .line 1293
    const-string v14, "day"

    .line 1294
    .line 1295
    const-string v15, "counts"

    .line 1296
    .line 1297
    if-eqz v13, :cond_2c

    .line 1298
    .line 1299
    check-cast v11, Ljava/util/Map;

    .line 1300
    .line 1301
    invoke-static {v11, v14, v8}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v13

    .line 1305
    if-eqz v13, :cond_2c

    .line 1306
    .line 1307
    goto :goto_14

    .line 1308
    :cond_2c
    invoke-static {v14, v8}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v11

    .line 1312
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 1313
    .line 1314
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1315
    .line 1316
    .line 1317
    invoke-interface {v11, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    :goto_14
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v8

    .line 1327
    instance-of v10, v8, Ljava/util/Map;

    .line 1328
    .line 1329
    if-eqz v10, :cond_2d

    .line 1330
    .line 1331
    check-cast v8, Ljava/util/Map;

    .line 1332
    .line 1333
    goto :goto_15

    .line 1334
    :cond_2d
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 1335
    .line 1336
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1337
    .line 1338
    .line 1339
    invoke-interface {v11, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    .line 1341
    .line 1342
    :goto_15
    const/4 v10, 0x0

    .line 1343
    invoke-static {v8, v3, v10}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 1344
    .line 1345
    .line 1346
    move-result v10

    .line 1347
    const/4 v11, 0x1

    .line 1348
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 1349
    .line 1350
    .line 1351
    move-result v13

    .line 1352
    add-int/2addr v13, v10

    .line 1353
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v10

    .line 1357
    invoke-interface {v8, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    goto :goto_17

    .line 1361
    :cond_2e
    :goto_16
    const/4 v11, 0x1

    .line 1362
    :goto_17
    const-string v3, "item_type"

    .line 1363
    .line 1364
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v3

    .line 1368
    invoke-static {v3, v11}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 1369
    .line 1370
    .line 1371
    move-result v3

    .line 1372
    invoke-static {v2, v3, v1, v12}, Lcom/sgscq/vpn/handler/x0;->d(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v3

    .line 1376
    new-instance v5, Ljava/util/ArrayList;

    .line 1377
    .line 1378
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    .line 1380
    .line 1381
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/x0;->A(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v2

    .line 1385
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    .line 1387
    .line 1388
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    const-string v2, "reward_list"

    .line 1392
    .line 1393
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    invoke-static {v12}, Lcom/sgscq/vpn/handler/x0;->Q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v2

    .line 1407
    check-cast v2, Ljava/util/Map;

    .line 1408
    .line 1409
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v2

    .line 1413
    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->h0(Ljava/lang/String;)Z

    .line 1417
    .line 1418
    .line 1419
    move-result v1

    .line 1420
    if-eqz v1, :cond_2f

    .line 1421
    .line 1422
    const-string v1, "Player,Item"

    .line 1423
    .line 1424
    goto :goto_18

    .line 1425
    :cond_2f
    move-object v1, v4

    .line 1426
    :goto_18
    move-object/from16 v3, v17

    .line 1427
    .line 1428
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    :goto_19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1432
    .line 1433
    move-object/from16 v3, v25

    .line 1434
    .line 1435
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v2

    .line 1439
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1440
    .line 1441
    .line 1442
    move-result v1

    .line 1443
    if-eqz v1, :cond_30

    .line 1444
    .line 1445
    move-object/from16 v1, p1

    .line 1446
    .line 1447
    move-object/from16 v2, v19

    .line 1448
    .line 1449
    invoke-virtual {v2, v1, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_1a

    .line 1453
    :cond_30
    move-object/from16 v1, p1

    .line 1454
    .line 1455
    :goto_1a
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/x0;->P(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v2

    .line 1459
    move-object/from16 v7, v24

    .line 1460
    .line 1461
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v3

    .line 1465
    invoke-static {v0}, Lcom/sgscq/vpn/handler/x0;->K(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v4

    .line 1469
    array-length v5, v4

    .line 1470
    move-object/from16 v10, p0

    .line 1471
    .line 1472
    if-nez v5, :cond_31

    .line 1473
    .line 1474
    goto :goto_1b

    .line 1475
    :cond_31
    move-object v3, v4

    .line 1476
    :goto_1b
    invoke-virtual {v10, v1, v2, v12, v3}, Lcom/sgscq/vpn/handler/x0;->n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v1

    .line 1480
    move-object/from16 v12, v23

    .line 1481
    .line 1482
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    goto :goto_1c

    .line 1486
    :cond_32
    move-object/from16 v10, p0

    .line 1487
    .line 1488
    move-object/from16 v46, v3

    .line 1489
    .line 1490
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    :goto_1c
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v0

    .line 1498
    move-object/from16 v15, v46

    .line 1499
    .line 1500
    invoke-virtual {v15, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1501
    .line 1502
    .line 1503
    move-result-object v0

    .line 1504
    :goto_1d
    return-object v0

    .line 1505
    :cond_33
    move-object/from16 v10, p0

    .line 1506
    .line 1507
    move-object v15, v3

    .line 1508
    move-object v3, v12

    .line 1509
    move-object/from16 v12, v23

    .line 1510
    .line 1511
    const-string v0, "item.getQuickList"

    .line 1512
    .line 1513
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v0

    .line 1517
    if-eqz v0, :cond_34

    .line 1518
    .line 1519
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/handler/x0;->x(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v0

    .line 1523
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    invoke-virtual {v15, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1528
    .line 1529
    .line 1530
    move-result-object v0

    .line 1531
    return-object v0

    .line 1532
    :cond_34
    const-string v0, "item.getList"

    .line 1533
    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v0

    .line 1538
    if-eqz v0, :cond_35

    .line 1539
    .line 1540
    invoke-virtual {v10, v2}, Lcom/sgscq/vpn/handler/x0;->j0(Ljava/util/Map;)[B

    .line 1541
    .line 1542
    .line 1543
    move-result-object v0

    .line 1544
    return-object v0

    .line 1545
    :cond_35
    const-string v0, "item.resolveItem"

    .line 1546
    .line 1547
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1548
    .line 1549
    .line 1550
    move-result v0

    .line 1551
    move-object/from16 v23, v12

    .line 1552
    .line 1553
    const-string v12, "item.deleteItem"

    .line 1554
    .line 1555
    if-nez v0, :cond_3b

    .line 1556
    .line 1557
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v0

    .line 1561
    if-eqz v0, :cond_36

    .line 1562
    .line 1563
    goto :goto_1e

    .line 1564
    :cond_36
    const-string v0, "item.quickBuy"

    .line 1565
    .line 1566
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    if-eqz v0, :cond_37

    .line 1571
    .line 1572
    invoke-virtual {v10, v2}, Lcom/sgscq/vpn/handler/x0;->l0(Ljava/util/Map;)[B

    .line 1573
    .line 1574
    .line 1575
    move-result-object v0

    .line 1576
    return-object v0

    .line 1577
    :cond_37
    const-string v0, "product."

    .line 1578
    .line 1579
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v0

    .line 1583
    if-eqz v0, :cond_38

    .line 1584
    .line 1585
    invoke-virtual/range {p0 .. p2}, Lcom/sgscq/vpn/handler/x0;->k0(Ljava/lang/String;Ljava/util/Map;)[B

    .line 1586
    .line 1587
    .line 1588
    move-result-object v0

    .line 1589
    return-object v0

    .line 1590
    :cond_38
    const-string v0, "pay."

    .line 1591
    .line 1592
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v0

    .line 1596
    if-eqz v0, :cond_39

    .line 1597
    .line 1598
    invoke-virtual/range {p0 .. p2}, Lcom/sgscq/vpn/handler/x0;->k0(Ljava/lang/String;Ljava/util/Map;)[B

    .line 1599
    .line 1600
    .line 1601
    move-result-object v0

    .line 1602
    return-object v0

    .line 1603
    :cond_39
    const-string v0, "payIos.iosCharge"

    .line 1604
    .line 1605
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1606
    .line 1607
    .line 1608
    move-result v0

    .line 1609
    if-eqz v0, :cond_3a

    .line 1610
    .line 1611
    invoke-virtual/range {p0 .. p2}, Lcom/sgscq/vpn/handler/x0;->m0(Ljava/lang/String;Ljava/util/Map;)[B

    .line 1612
    .line 1613
    .line 1614
    move-result-object v0

    .line 1615
    return-object v0

    .line 1616
    :cond_3a
    return-object v18

    .line 1617
    :cond_3b
    :goto_1e
    invoke-virtual {v15, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v0

    .line 1621
    iget-object v10, v15, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1622
    .line 1623
    invoke-virtual {v10, v0}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v16

    .line 1627
    if-nez v16, :cond_3c

    .line 1628
    .line 1629
    new-instance v16, Ljava/util/LinkedHashMap;

    .line 1630
    .line 1631
    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1632
    .line 1633
    .line 1634
    :cond_3c
    move-object/from16 v46, v15

    .line 1635
    .line 1636
    move-object/from16 v15, v16

    .line 1637
    .line 1638
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v1

    .line 1642
    const-string v12, "item_delta"

    .line 1643
    .line 1644
    if-eqz v1, :cond_3d

    .line 1645
    .line 1646
    const/4 v1, 0x1

    .line 1647
    invoke-static {v15, v2, v1}, Lcom/sgscq/vpn/handler/x0;->O0(Ljava/util/Map;Ljava/util/Map;Z)Lcom/sgscq/vpn/handler/w0;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v1

    .line 1651
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v2

    .line 1655
    iget-object v5, v1, Lcom/sgscq/vpn/handler/w0;->a:Ljava/util/ArrayList;

    .line 1656
    .line 1657
    iget-object v6, v1, Lcom/sgscq/vpn/handler/w0;->b:Ljava/util/ArrayList;

    .line 1658
    .line 1659
    new-instance v8, Ljava/util/ArrayList;

    .line 1660
    .line 1661
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .line 1663
    .line 1664
    move-object/from16 v11, v21

    .line 1665
    .line 1666
    move-object/from16 v13, v22

    .line 1667
    .line 1668
    filled-new-array {v13, v6, v11, v8}, [Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v6

    .line 1672
    move-object/from16 v8, v20

    .line 1673
    .line 1674
    invoke-static {v8, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v5

    .line 1678
    invoke-interface {v2, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    .line 1680
    .line 1681
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    .line 1683
    .line 1684
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    iget v1, v1, Lcom/sgscq/vpn/handler/w0;->c:I

    .line 1688
    .line 1689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v1

    .line 1693
    const-string v5, "delete_num"

    .line 1694
    .line 1695
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    invoke-static {v15}, Lcom/sgscq/vpn/handler/x0;->Q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v1

    .line 1705
    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    .line 1707
    .line 1708
    move-object v1, v10

    .line 1709
    goto/16 :goto_24

    .line 1710
    .line 1711
    :cond_3d
    move-object/from16 v16, v0

    .line 1712
    .line 1713
    move-object/from16 v19, v3

    .line 1714
    .line 1715
    move-object/from16 v17, v10

    .line 1716
    .line 1717
    move-object/from16 v10, v20

    .line 1718
    .line 1719
    move-object/from16 v1, v21

    .line 1720
    .line 1721
    move-object/from16 v0, v22

    .line 1722
    .line 1723
    const-string v3, "user_item_id"

    .line 1724
    .line 1725
    move-object/from16 v20, v9

    .line 1726
    .line 1727
    const-string v9, "item_pk_id"

    .line 1728
    .line 1729
    filled-new-array {v3, v13, v9, v14}, [Ljava/lang/String;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v3

    .line 1733
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/x0;->f0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v3

    .line 1737
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1738
    .line 1739
    .line 1740
    move-result v9

    .line 1741
    if-eqz v9, :cond_3e

    .line 1742
    .line 1743
    goto :goto_21

    .line 1744
    :cond_3e
    invoke-static {v4, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v9

    .line 1748
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v9

    .line 1752
    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1753
    .line 1754
    .line 1755
    move-result v21

    .line 1756
    if-eqz v21, :cond_41

    .line 1757
    .line 1758
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v21

    .line 1762
    move-object/from16 p1, v9

    .line 1763
    .line 1764
    move-object/from16 v9, v21

    .line 1765
    .line 1766
    check-cast v9, Ljava/util/Map;

    .line 1767
    .line 1768
    invoke-static {v9, v13, v5, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v21

    .line 1772
    if-nez v21, :cond_3f

    .line 1773
    .line 1774
    move-object/from16 v9, p1

    .line 1775
    .line 1776
    goto :goto_1f

    .line 1777
    :cond_3f
    invoke-static {v9, v14, v5, v11}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v3

    .line 1781
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v5

    .line 1785
    invoke-virtual {v5, v3}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v3

    .line 1789
    const-string v5, "type"

    .line 1790
    .line 1791
    const-string v11, "item_type"

    .line 1792
    .line 1793
    const/16 v13, 0x2e

    .line 1794
    .line 1795
    if-eqz v3, :cond_40

    .line 1796
    .line 1797
    const-string v9, "0"

    .line 1798
    .line 1799
    const/4 v14, 0x0

    .line 1800
    invoke-static {v3, v5, v9, v11, v14}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1801
    .line 1802
    .line 1803
    move-result v3

    .line 1804
    if-ne v13, v3, :cond_42

    .line 1805
    .line 1806
    goto :goto_20

    .line 1807
    :cond_40
    const/4 v14, 0x0

    .line 1808
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v3

    .line 1812
    invoke-interface {v9, v11, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v3

    .line 1816
    invoke-static {v3, v14}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 1817
    .line 1818
    .line 1819
    move-result v3

    .line 1820
    if-ne v13, v3, :cond_42

    .line 1821
    .line 1822
    :goto_20
    const/4 v3, 0x1

    .line 1823
    goto :goto_22

    .line 1824
    :cond_41
    :goto_21
    const/4 v14, 0x0

    .line 1825
    :cond_42
    move v3, v14

    .line 1826
    :goto_22
    const-string v5, "resolve_num"

    .line 1827
    .line 1828
    if-eqz v3, :cond_44

    .line 1829
    .line 1830
    invoke-static {v15, v2, v14}, Lcom/sgscq/vpn/handler/x0;->O0(Ljava/util/Map;Ljava/util/Map;Z)Lcom/sgscq/vpn/handler/w0;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v2

    .line 1834
    iget v3, v2, Lcom/sgscq/vpn/handler/w0;->c:I

    .line 1835
    .line 1836
    mul-int/lit16 v3, v3, 0x96

    .line 1837
    .line 1838
    new-instance v9, Ljava/util/ArrayList;

    .line 1839
    .line 1840
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    .line 1842
    .line 1843
    if-lez v3, :cond_43

    .line 1844
    .line 1845
    const/16 v11, 0x35

    .line 1846
    .line 1847
    invoke-static {v3, v11, v8, v15}, Lcom/sgscq/vpn/handler/x0;->d(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v8

    .line 1851
    invoke-static {v3, v8}, Lcom/sgscq/vpn/handler/x0;->A(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v8

    .line 1855
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    .line 1857
    .line 1858
    :cond_43
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v8

    .line 1862
    iget v11, v2, Lcom/sgscq/vpn/handler/w0;->c:I

    .line 1863
    .line 1864
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v11

    .line 1868
    invoke-interface {v8, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    .line 1870
    .line 1871
    const-string v5, "stone_num"

    .line 1872
    .line 1873
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v3

    .line 1877
    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    .line 1879
    .line 1880
    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    .line 1882
    .line 1883
    const-string v3, "reward_list"

    .line 1884
    .line 1885
    invoke-interface {v8, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    .line 1887
    .line 1888
    iget-object v3, v2, Lcom/sgscq/vpn/handler/w0;->a:Ljava/util/ArrayList;

    .line 1889
    .line 1890
    iget-object v2, v2, Lcom/sgscq/vpn/handler/w0;->b:Ljava/util/ArrayList;

    .line 1891
    .line 1892
    new-instance v5, Ljava/util/ArrayList;

    .line 1893
    .line 1894
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .line 1896
    .line 1897
    filled-new-array {v0, v2, v1, v5}, [Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    invoke-static {v10, v3, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v0

    .line 1905
    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    .line 1907
    .line 1908
    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    invoke-interface {v8, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    invoke-static {v15}, Lcom/sgscq/vpn/handler/x0;->Q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v0

    .line 1918
    move-object/from16 v9, v20

    .line 1919
    .line 1920
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    .line 1922
    .line 1923
    move-object/from16 v3, v19

    .line 1924
    .line 1925
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    .line 1927
    .line 1928
    move-object v2, v8

    .line 1929
    goto :goto_23

    .line 1930
    :cond_44
    move-object/from16 v3, v19

    .line 1931
    .line 1932
    move-object/from16 v9, v20

    .line 1933
    .line 1934
    invoke-static {v15, v2, v14}, Lcom/sgscq/vpn/handler/x0;->O0(Ljava/util/Map;Ljava/util/Map;Z)Lcom/sgscq/vpn/handler/w0;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v2

    .line 1938
    iget v6, v2, Lcom/sgscq/vpn/handler/w0;->c:I

    .line 1939
    .line 1940
    mul-int/lit8 v6, v6, 0x64

    .line 1941
    .line 1942
    int-to-long v13, v6

    .line 1943
    invoke-static {v13, v14, v15}, Lcom/sgscq/vpn/p5;->b(JLjava/util/Map;)V

    .line 1944
    .line 1945
    .line 1946
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v6

    .line 1950
    iget-object v8, v2, Lcom/sgscq/vpn/handler/w0;->a:Ljava/util/ArrayList;

    .line 1951
    .line 1952
    iget-object v11, v2, Lcom/sgscq/vpn/handler/w0;->b:Ljava/util/ArrayList;

    .line 1953
    .line 1954
    new-instance v13, Ljava/util/ArrayList;

    .line 1955
    .line 1956
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1957
    .line 1958
    .line 1959
    filled-new-array {v0, v11, v1, v13}, [Ljava/lang/Object;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v0

    .line 1963
    invoke-static {v10, v8, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v0

    .line 1967
    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    .line 1969
    .line 1970
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    .line 1972
    .line 1973
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    .line 1975
    .line 1976
    iget v0, v2, Lcom/sgscq/vpn/handler/w0;->c:I

    .line 1977
    .line 1978
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v0

    .line 1982
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    .line 1984
    .line 1985
    const-string v0, "user_coin"

    .line 1986
    .line 1987
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v1

    .line 1991
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    .line 1993
    .line 1994
    const-string v0, "Player,Item"

    .line 1995
    .line 1996
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    .line 1998
    .line 1999
    invoke-static {v15}, Lcom/sgscq/vpn/handler/x0;->Q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v0

    .line 2003
    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    .line 2005
    .line 2006
    move-object v2, v6

    .line 2007
    :goto_23
    move-object/from16 v0, v16

    .line 2008
    .line 2009
    move-object/from16 v1, v17

    .line 2010
    .line 2011
    :goto_24
    invoke-virtual {v1, v0, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2012
    .line 2013
    .line 2014
    invoke-static {v2, v15}, Lcom/sgscq/vpn/handler/x0;->P(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v1

    .line 2018
    invoke-static {v2}, Lcom/sgscq/vpn/handler/x0;->K(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v3

    .line 2022
    move-object/from16 v11, p0

    .line 2023
    .line 2024
    invoke-virtual {v11, v0, v1, v15, v3}, Lcom/sgscq/vpn/handler/x0;->n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v0

    .line 2028
    move-object/from16 v12, v23

    .line 2029
    .line 2030
    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v0

    .line 2037
    move-object/from16 v1, v46

    .line 2038
    .line 2039
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2040
    .line 2041
    .line 2042
    move-result-object v0

    .line 2043
    return-object v0

    .line 2044
    :cond_45
    :goto_25
    move-object/from16 v23, v12

    .line 2045
    .line 2046
    move-object/from16 v10, v20

    .line 2047
    .line 2048
    move-object/from16 v0, v22

    .line 2049
    .line 2050
    move-object v12, v3

    .line 2051
    move-object v3, v11

    .line 2052
    move-object/from16 v11, v21

    .line 2053
    .line 2054
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2055
    .line 2056
    .line 2057
    move-result v1

    .line 2058
    const-string v8, "return_info"

    .line 2059
    .line 2060
    if-eqz v1, :cond_5d

    .line 2061
    .line 2062
    invoke-virtual {v12, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v1

    .line 2066
    move-object/from16 v20, v4

    .line 2067
    .line 2068
    iget-object v4, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2069
    .line 2070
    move-object/from16 v25, v3

    .line 2071
    .line 2072
    invoke-virtual {v4, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v3

    .line 2076
    if-nez v3, :cond_46

    .line 2077
    .line 2078
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v0

    .line 2082
    const-string v1, "code"

    .line 2083
    .line 2084
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v2

    .line 2088
    const-string v3, "result"

    .line 2089
    .line 2090
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2091
    .line 2092
    const-string v5, "msg"

    .line 2093
    .line 2094
    const-string v6, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    .line 2095
    .line 2096
    const-string v7, "error_code"

    .line 2097
    .line 2098
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v8

    .line 2102
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v1

    .line 2106
    invoke-static {v15, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v0

    .line 2110
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v0

    .line 2114
    invoke-virtual {v12, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2115
    .line 2116
    .line 2117
    move-result-object v0

    .line 2118
    move-object/from16 v6, p0

    .line 2119
    .line 2120
    goto/16 :goto_35

    .line 2121
    .line 2122
    :cond_46
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v15

    .line 2126
    move-object/from16 p1, v1

    .line 2127
    .line 2128
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 2129
    .line 2130
    .line 2131
    move-result-object v1

    .line 2132
    move-object/from16 v16, v4

    .line 2133
    .line 2134
    const-string v4, "111009"

    .line 2135
    .line 2136
    move-object/from16 v21, v8

    .line 2137
    .line 2138
    move-object/from16 v8, v19

    .line 2139
    .line 2140
    invoke-interface {v2, v8, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v4

    .line 2144
    check-cast v4, Ljava/lang/String;

    .line 2145
    .line 2146
    move-object/from16 v19, v9

    .line 2147
    .line 2148
    iget-object v9, v12, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 2149
    .line 2150
    move-object/from16 v46, v12

    .line 2151
    .line 2152
    const-string v12, "wish_general_id"

    .line 2153
    .line 2154
    if-eqz v4, :cond_49

    .line 2155
    .line 2156
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 2157
    .line 2158
    .line 2159
    move-result v22

    .line 2160
    if-eqz v22, :cond_47

    .line 2161
    .line 2162
    goto :goto_27

    .line 2163
    :cond_47
    invoke-static {v9, v3}, Lcom/sgscq/vpn/handler/x0;->M(Landroid/content/Context;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v22

    .line 2167
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v22

    .line 2171
    :goto_26
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 2172
    .line 2173
    .line 2174
    move-result v24

    .line 2175
    if-eqz v24, :cond_49

    .line 2176
    .line 2177
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v24

    .line 2181
    move-object/from16 v26, v6

    .line 2182
    .line 2183
    move-object/from16 v6, v24

    .line 2184
    .line 2185
    check-cast v6, Ljava/util/Map;

    .line 2186
    .line 2187
    invoke-static {v6, v12, v5, v8, v4}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2188
    .line 2189
    .line 2190
    move-result v24

    .line 2191
    if-nez v24, :cond_48

    .line 2192
    .line 2193
    move-object/from16 v6, v26

    .line 2194
    .line 2195
    goto :goto_26

    .line 2196
    :cond_48
    move-object/from16 v24, v1

    .line 2197
    .line 2198
    const-string v1, "wish_enable"

    .line 2199
    .line 2200
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v1

    .line 2204
    invoke-static {v1}, Lcom/sgscq/vpn/handler/x0;->b1(Ljava/lang/Object;)Z

    .line 2205
    .line 2206
    .line 2207
    move-result v1

    .line 2208
    if-eqz v1, :cond_4a

    .line 2209
    .line 2210
    goto :goto_28

    .line 2211
    :cond_49
    :goto_27
    move-object/from16 v24, v1

    .line 2212
    .line 2213
    move-object/from16 v26, v6

    .line 2214
    .line 2215
    :cond_4a
    move-object/from16 v6, v18

    .line 2216
    .line 2217
    :goto_28
    if-nez v6, :cond_4b

    .line 2218
    .line 2219
    const-string v0, "\u8bb8\u613f\u6b66\u5c06\u4e0d\u53ef\u7528"

    .line 2220
    .line 2221
    goto :goto_2a

    .line 2222
    :cond_4b
    invoke-static {v15, v3}, Lcom/sgscq/vpn/handler/x0;->c1(Ljava/lang/String;Ljava/util/Map;)I

    .line 2223
    .line 2224
    .line 2225
    move-result v1

    .line 2226
    if-lez v1, :cond_4c

    .line 2227
    .line 2228
    const/4 v1, 0x1

    .line 2229
    goto :goto_29

    .line 2230
    :cond_4c
    const/4 v1, 0x0

    .line 2231
    :goto_29
    move-object/from16 v18, v9

    .line 2232
    .line 2233
    if-nez v1, :cond_4d

    .line 2234
    .line 2235
    const-string v9, "600037"

    .line 2236
    .line 2237
    move-object/from16 v22, v15

    .line 2238
    .line 2239
    const/4 v15, 0x1

    .line 2240
    invoke-static {v15, v9, v3}, Lcom/sgscq/vpn/handler/x0;->W0(ILjava/lang/String;Ljava/util/Map;)Z

    .line 2241
    .line 2242
    .line 2243
    move-result v9

    .line 2244
    if-nez v9, :cond_4e

    .line 2245
    .line 2246
    const-string v0, "\u8bb8\u613f\u9053\u5177\u4e0d\u8db3"

    .line 2247
    .line 2248
    :goto_2a
    invoke-static {v0}, Lcom/sgscq/vpn/handler/x0;->W(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v1

    .line 2252
    move-object v5, v1

    .line 2253
    move-object/from16 v1, v21

    .line 2254
    .line 2255
    goto/16 :goto_33

    .line 2256
    .line 2257
    :cond_4d
    move-object/from16 v22, v15

    .line 2258
    .line 2259
    :cond_4e
    invoke-interface {v6, v12, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v4

    .line 2263
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v4

    .line 2267
    const-string v6, "wish_reward_type"

    .line 2268
    .line 2269
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v2

    .line 2273
    check-cast v2, Ljava/lang/String;

    .line 2274
    .line 2275
    const-string v9, "soul1"

    .line 2276
    .line 2277
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2278
    .line 2279
    .line 2280
    move-result v15

    .line 2281
    move-object/from16 v35, v6

    .line 2282
    .line 2283
    const-string v6, "gold250"

    .line 2284
    .line 2285
    move-object/from16 v36, v12

    .line 2286
    .line 2287
    const-string v12, "soul3"

    .line 2288
    .line 2289
    if-nez v15, :cond_53

    .line 2290
    .line 2291
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2292
    .line 2293
    .line 2294
    move-result v15

    .line 2295
    if-nez v15, :cond_53

    .line 2296
    .line 2297
    const-string v15, "gold50"

    .line 2298
    .line 2299
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2300
    .line 2301
    .line 2302
    move-result v27

    .line 2303
    if-nez v27, :cond_53

    .line 2304
    .line 2305
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2306
    .line 2307
    .line 2308
    move-result v27

    .line 2309
    if-eqz v27, :cond_4f

    .line 2310
    .line 2311
    goto :goto_2b

    .line 2312
    :cond_4f
    new-instance v2, Ljava/util/Random;

    .line 2313
    .line 2314
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 2315
    .line 2316
    .line 2317
    move-object/from16 p2, v15

    .line 2318
    .line 2319
    const/4 v15, 0x4

    .line 2320
    invoke-virtual {v2, v15}, Ljava/util/Random;->nextInt(I)I

    .line 2321
    .line 2322
    .line 2323
    move-result v2

    .line 2324
    if-eqz v2, :cond_52

    .line 2325
    .line 2326
    const/4 v15, 0x1

    .line 2327
    if-eq v2, v15, :cond_51

    .line 2328
    .line 2329
    const/4 v15, 0x2

    .line 2330
    if-eq v2, v15, :cond_50

    .line 2331
    .line 2332
    move-object v2, v6

    .line 2333
    goto :goto_2b

    .line 2334
    :cond_50
    move-object/from16 v2, p2

    .line 2335
    .line 2336
    goto :goto_2b

    .line 2337
    :cond_51
    move-object v2, v12

    .line 2338
    goto :goto_2b

    .line 2339
    :cond_52
    move-object v2, v9

    .line 2340
    :cond_53
    :goto_2b
    new-instance v15, Ljava/util/ArrayList;

    .line 2341
    .line 2342
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    .line 2344
    .line 2345
    move-object/from16 v37, v10

    .line 2346
    .line 2347
    const-string v10, "wish_times"

    .line 2348
    .line 2349
    move-object/from16 v38, v0

    .line 2350
    .line 2351
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v0

    .line 2355
    move-object/from16 v39, v11

    .line 2356
    .line 2357
    const/4 v11, 0x0

    .line 2358
    invoke-static {v0, v11}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 2359
    .line 2360
    .line 2361
    move-result v0

    .line 2362
    add-int/lit8 v0, v0, 0x1

    .line 2363
    .line 2364
    move-object/from16 v40, v5

    .line 2365
    .line 2366
    const-string v5, "wish_exp"

    .line 2367
    .line 2368
    move-object/from16 v41, v14

    .line 2369
    .line 2370
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v14

    .line 2374
    invoke-static {v14, v11}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 2375
    .line 2376
    .line 2377
    move-result v14

    .line 2378
    add-int/lit8 v14, v14, 0xa

    .line 2379
    .line 2380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v0

    .line 2384
    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    .line 2386
    .line 2387
    rem-int/lit8 v0, v14, 0x64

    .line 2388
    .line 2389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2390
    .line 2391
    .line 2392
    move-result-object v0

    .line 2393
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    .line 2395
    .line 2396
    const-string v0, "wish_level"

    .line 2397
    .line 2398
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v5

    .line 2402
    invoke-static {v5, v11}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 2403
    .line 2404
    .line 2405
    move-result v5

    .line 2406
    div-int/lit8 v14, v14, 0x64

    .line 2407
    .line 2408
    add-int/2addr v14, v5

    .line 2409
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2410
    .line 2411
    .line 2412
    move-result-object v5

    .line 2413
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    .line 2415
    .line 2416
    if-eqz v1, :cond_54

    .line 2417
    .line 2418
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2419
    .line 2420
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2421
    .line 2422
    .line 2423
    goto :goto_2c

    .line 2424
    :cond_54
    invoke-static {v3}, Lcom/sgscq/vpn/handler/x0;->Q(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2425
    .line 2426
    .line 2427
    move-result-object v0

    .line 2428
    :goto_2c
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2429
    .line 2430
    .line 2431
    move-result v5

    .line 2432
    if-nez v5, :cond_57

    .line 2433
    .line 2434
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2435
    .line 2436
    .line 2437
    move-result v5

    .line 2438
    if-eqz v5, :cond_55

    .line 2439
    .line 2440
    goto :goto_2e

    .line 2441
    :cond_55
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2442
    .line 2443
    .line 2444
    move-result v5

    .line 2445
    if-eqz v5, :cond_56

    .line 2446
    .line 2447
    const/16 v5, 0xfa

    .line 2448
    .line 2449
    goto :goto_2d

    .line 2450
    :cond_56
    const/16 v5, 0x32

    .line 2451
    .line 2452
    :goto_2d
    move-object/from16 v6, v17

    .line 2453
    .line 2454
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    .line 2456
    .line 2457
    move-result-object v8

    .line 2458
    const/4 v9, 0x0

    .line 2459
    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/x0;->S0(Ljava/lang/Object;I)I

    .line 2460
    .line 2461
    .line 2462
    move-result v8

    .line 2463
    add-int/2addr v8, v5

    .line 2464
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v9

    .line 2468
    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    .line 2470
    .line 2471
    invoke-static {v5}, Lcom/sgscq/vpn/handler/x0;->r(I)Ljava/util/LinkedHashMap;

    .line 2472
    .line 2473
    .line 2474
    move-result-object v5

    .line 2475
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2476
    .line 2477
    .line 2478
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v5

    .line 2482
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    .line 2484
    .line 2485
    goto/16 :goto_31

    .line 2486
    .line 2487
    :cond_57
    :goto_2e
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2488
    .line 2489
    .line 2490
    move-result v5

    .line 2491
    if-eqz v5, :cond_58

    .line 2492
    .line 2493
    const/4 v5, 0x2

    .line 2494
    goto :goto_2f

    .line 2495
    :cond_58
    const/4 v5, 0x1

    .line 2496
    :goto_2f
    const/4 v6, 0x1

    .line 2497
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 2498
    .line 2499
    .line 2500
    move-result v6

    .line 2501
    invoke-static {v6, v4, v3}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 2502
    .line 2503
    .line 2504
    invoke-static {v7, v3}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v9

    .line 2508
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2509
    .line 2510
    .line 2511
    move-result-object v9

    .line 2512
    :cond_59
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 2513
    .line 2514
    .line 2515
    move-result v10

    .line 2516
    if-eqz v10, :cond_5a

    .line 2517
    .line 2518
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2519
    .line 2520
    .line 2521
    move-result-object v10

    .line 2522
    check-cast v10, Ljava/util/Map;

    .line 2523
    .line 2524
    invoke-static {v10, v8, v4}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2525
    .line 2526
    .line 2527
    move-result v11

    .line 2528
    if-eqz v11, :cond_59

    .line 2529
    .line 2530
    goto :goto_30

    .line 2531
    :cond_5a
    const-string v27, "id"

    .line 2532
    .line 2533
    const-string v29, "general_id"

    .line 2534
    .line 2535
    const-string v31, "num"

    .line 2536
    .line 2537
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v32

    .line 2541
    const-string v33, "card_type"

    .line 2542
    .line 2543
    const/4 v6, 0x1

    .line 2544
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2545
    .line 2546
    .line 2547
    move-result-object v34

    .line 2548
    move-object/from16 v28, v4

    .line 2549
    .line 2550
    move-object/from16 v30, v4

    .line 2551
    .line 2552
    filled-new-array/range {v27 .. v34}, [Ljava/lang/Object;

    .line 2553
    .line 2554
    .line 2555
    move-result-object v6

    .line 2556
    invoke-static {v13, v4, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v10

    .line 2560
    :goto_30
    move-object/from16 v9, v40

    .line 2561
    .line 2562
    move-object/from16 v6, v41

    .line 2563
    .line 2564
    invoke-static {v10, v6, v9, v8}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v6

    .line 2568
    invoke-interface {v10, v13, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    .line 2570
    .line 2571
    move-result-object v8

    .line 2572
    const/4 v9, 0x1

    .line 2573
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v11

    .line 2577
    const-string v12, "card_type"

    .line 2578
    .line 2579
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v11

    .line 2583
    invoke-static {v6, v5, v8, v11}, Lcom/sgscq/vpn/handler/x0;->p(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v5

    .line 2587
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    .line 2589
    .line 2590
    new-instance v5, Ljava/util/ArrayList;

    .line 2591
    .line 2592
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2593
    .line 2594
    .line 2595
    new-array v6, v9, [Ljava/util/Map;

    .line 2596
    .line 2597
    const/4 v8, 0x0

    .line 2598
    aput-object v10, v6, v8

    .line 2599
    .line 2600
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2601
    .line 2602
    .line 2603
    move-result-object v6

    .line 2604
    new-instance v8, Ljava/util/ArrayList;

    .line 2605
    .line 2606
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2607
    .line 2608
    .line 2609
    move-object/from16 v10, v38

    .line 2610
    .line 2611
    move-object/from16 v9, v39

    .line 2612
    .line 2613
    filled-new-array {v10, v6, v9, v8}, [Ljava/lang/Object;

    .line 2614
    .line 2615
    .line 2616
    move-result-object v6

    .line 2617
    move-object/from16 v8, v37

    .line 2618
    .line 2619
    invoke-static {v8, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v5

    .line 2623
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    .line 2625
    .line 2626
    :goto_31
    if-eqz v1, :cond_5b

    .line 2627
    .line 2628
    const-string v1, "wish_free_last_used_day"

    .line 2629
    .line 2630
    move-object/from16 v5, v22

    .line 2631
    .line 2632
    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2633
    .line 2634
    .line 2635
    goto :goto_32

    .line 2636
    :cond_5b
    move-object/from16 v5, v22

    .line 2637
    .line 2638
    :goto_32
    move-object/from16 v1, v18

    .line 2639
    .line 2640
    invoke-static {v1, v5, v3}, Lcom/sgscq/vpn/handler/x0;->H(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2641
    .line 2642
    .line 2643
    move-result-object v1

    .line 2644
    move-object/from16 v5, v24

    .line 2645
    .line 2646
    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2647
    .line 2648
    .line 2649
    move-object/from16 v1, v36

    .line 2650
    .line 2651
    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    .line 2653
    .line 2654
    move-object/from16 v1, v35

    .line 2655
    .line 2656
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    .line 2658
    .line 2659
    move-object/from16 v1, v26

    .line 2660
    .line 2661
    invoke-interface {v5, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    .line 2663
    .line 2664
    move-object/from16 v1, v19

    .line 2665
    .line 2666
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    .line 2668
    .line 2669
    invoke-static {v5}, Lcom/sgscq/vpn/handler/x0;->G(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 2670
    .line 2671
    .line 2672
    move-result-object v0

    .line 2673
    move-object/from16 v1, v21

    .line 2674
    .line 2675
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    .line 2677
    .line 2678
    :goto_33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2679
    .line 2680
    move-object/from16 v2, v25

    .line 2681
    .line 2682
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2683
    .line 2684
    .line 2685
    move-result-object v2

    .line 2686
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 2687
    .line 2688
    .line 2689
    move-result v0

    .line 2690
    if-eqz v0, :cond_5c

    .line 2691
    .line 2692
    const-string v0, "115"

    .line 2693
    .line 2694
    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 2695
    .line 2696
    .line 2697
    :cond_5c
    move-object/from16 v0, p1

    .line 2698
    .line 2699
    move-object/from16 v2, v16

    .line 2700
    .line 2701
    invoke-virtual {v2, v0, v3}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2702
    .line 2703
    .line 2704
    invoke-static {v5, v3}, Lcom/sgscq/vpn/handler/x0;->P(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v2

    .line 2708
    move-object/from16 v4, v20

    .line 2709
    .line 2710
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v4

    .line 2714
    move-object/from16 v6, p0

    .line 2715
    .line 2716
    invoke-virtual {v6, v0, v2, v3, v4}, Lcom/sgscq/vpn/handler/x0;->n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2717
    .line 2718
    .line 2719
    move-result-object v0

    .line 2720
    move-object/from16 v2, v23

    .line 2721
    .line 2722
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2723
    .line 2724
    .line 2725
    invoke-static {v5}, Lcom/sgscq/vpn/handler/x0;->G(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 2726
    .line 2727
    .line 2728
    move-result-object v0

    .line 2729
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    .line 2731
    .line 2732
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2733
    .line 2734
    .line 2735
    move-result-object v0

    .line 2736
    move-object v1, v0

    .line 2737
    move-object/from16 v0, v46

    .line 2738
    .line 2739
    goto :goto_34

    .line 2740
    :cond_5d
    move-object/from16 v6, p0

    .line 2741
    .line 2742
    move-object v1, v8

    .line 2743
    move-object v0, v12

    .line 2744
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 2745
    .line 2746
    .line 2747
    move-result-object v2

    .line 2748
    iget-object v3, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2749
    .line 2750
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 2751
    .line 2752
    .line 2753
    move-result-object v2

    .line 2754
    if-nez v2, :cond_5e

    .line 2755
    .line 2756
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 2757
    .line 2758
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2759
    .line 2760
    .line 2761
    :cond_5e
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2762
    .line 2763
    .line 2764
    move-result-object v3

    .line 2765
    iget-object v4, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 2766
    .line 2767
    invoke-static {v4, v3, v2}, Lcom/sgscq/vpn/handler/x0;->H(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2768
    .line 2769
    .line 2770
    move-result-object v2

    .line 2771
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v3

    .line 2775
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2776
    .line 2777
    .line 2778
    const-string v4, "wish_info"

    .line 2779
    .line 2780
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    .line 2782
    .line 2783
    move-result-object v5

    .line 2784
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    .line 2786
    .line 2787
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v2

    .line 2791
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2792
    .line 2793
    .line 2794
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v1

    .line 2798
    :goto_34
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2799
    .line 2800
    .line 2801
    move-result-object v0

    .line 2802
    :goto_35
    return-object v0
.end method

.method public final j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "pk_id"

    .line 2
    .line 3
    const-string v1, "item_id"

    .line 4
    .line 5
    invoke-static {v0, p2, v1, p3}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "item_price"

    .line 10
    .line 11
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v0, "discount_price"

    .line 19
    .line 20
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    invoke-virtual {p2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/4 p5, 0x1

    .line 28
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    const-string v0, "currency_type"

    .line 33
    .line 34
    invoke-virtual {p2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x3e7

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "purchase_num"

    .line 44
    .line 45
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "purchased_num"

    .line 54
    .line 55
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v1, "is_purchased"

    .line 59
    .line 60
    invoke-virtual {p2, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string p5, "open_time"

    .line 64
    .line 65
    invoke-virtual {p2, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string p5, "close_time"

    .line 69
    .line 70
    invoke-virtual {p2, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string p5, "vip_level"

    .line 74
    .line 75
    invoke-virtual {p2, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string p5, "tag_id"

    .line 79
    .line 80
    invoke-virtual {p2, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string p5, "can_exchange"

    .line 84
    .line 85
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {p2, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string p5, "is_notice"

    .line 91
    .line 92
    const-string v0, "0"

    .line 93
    .line 94
    invoke-virtual {p2, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string p5, "item_title"

    .line 98
    .line 99
    invoke-virtual {p2, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p3, p4}, Lcom/sgscq/vpn/handler/x0;->R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    const-string p4, "item_desc"

    .line 107
    .line 108
    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final j0(Ljava/util/Map;)[B
    .locals 59

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "is_quick"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/sgscq/vpn/handler/x0;->u0(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_37

    .line 18
    .line 19
    const-string v1, "quick"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/sgscq/vpn/handler/x0;->u0(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_37

    .line 32
    .line 33
    const-string v1, "type"

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "1"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_27

    .line 48
    .line 49
    :cond_0
    const-string v1, "do"

    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "item.getQuickList"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-object v1, v9, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x0;->x(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_1
    const-string v1, "is_gift"

    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/sgscq/vpn/handler/x0;->u0(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string v2, "belongs_shop"

    .line 91
    .line 92
    const-string v10, ""

    .line 93
    .line 94
    invoke-interface {v0, v2, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    move-object v11, v2

    .line 99
    check-cast v11, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v2, v9, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    iget-object v0, v9, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 110
    .line 111
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/4 v2, 0x1

    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    move v13, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    move v13, v3

    .line 122
    :goto_0
    if-nez v0, :cond_3

    .line 123
    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_3
    move-object v14, v0

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v15, "ladder_rank_salary"

    .line 134
    .line 135
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v8, "ladderRankSalary"

    .line 140
    .line 141
    invoke-interface {v14, v8, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    const-string v6, "ladderSalaryAt"

    .line 154
    .line 155
    invoke-interface {v14, v6, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    iget-object v0, v9, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 166
    .line 167
    const/4 v3, 0x5

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    new-instance v4, Lcom/sgscq/vpn/cloud/z;

    .line 171
    .line 172
    invoke-direct {v4, v0}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    new-instance v4, Lm/e;

    .line 176
    .line 177
    invoke-direct {v4, v3, v0}, Lm/e;-><init>(ILandroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    new-instance v3, Lcom/sgscq/vpn/cloud/b0;

    .line 181
    .line 182
    invoke-direct {v3, v2, v0}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_4

    .line 197
    .line 198
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v0, v12}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    move v0, v2

    .line 213
    goto :goto_1

    .line 214
    :cond_4
    const/4 v0, 0x0

    .line 215
    :goto_1
    if-eqz v0, :cond_5

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    const/4 v2, 0x0

    .line 219
    :goto_2
    move/from16 v16, v2

    .line 220
    .line 221
    iget-object v0, v9, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 222
    .line 223
    if-eqz v0, :cond_7

    .line 224
    .line 225
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 226
    .line 227
    if-nez v0, :cond_6

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->a()I

    .line 231
    .line 232
    .line 233
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_4

    .line 235
    :catch_0
    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 236
    :goto_4
    move v4, v0

    .line 237
    const-string v3, "4"

    .line 238
    .line 239
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    invoke-static {v14}, Lcom/sgscq/vpn/handler/x0;->u(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    goto :goto_5

    .line 250
    :cond_8
    const-string v0, "5"

    .line 251
    .line 252
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    invoke-virtual {v9, v14}, Lcom/sgscq/vpn/handler/x0;->t(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    :goto_5
    const/4 v1, 0x0

    .line 263
    move-object/from16 v17, v0

    .line 264
    .line 265
    move-object/from16 v28, v3

    .line 266
    .line 267
    move-object/from16 v29, v5

    .line 268
    .line 269
    move-object/from16 v33, v6

    .line 270
    .line 271
    move/from16 v34, v7

    .line 272
    .line 273
    move-object/from16 v52, v8

    .line 274
    .line 275
    move-object v2, v9

    .line 276
    move-object v7, v10

    .line 277
    move-object/from16 v31, v11

    .line 278
    .line 279
    move-object/from16 p1, v12

    .line 280
    .line 281
    move/from16 v30, v13

    .line 282
    .line 283
    move-object v4, v14

    .line 284
    move-object/from16 v32, v15

    .line 285
    .line 286
    goto/16 :goto_26

    .line 287
    .line 288
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .line 292
    .line 293
    const/4 v0, 0x0

    .line 294
    move-object/from16 p1, v3

    .line 295
    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    move-object/from16 v17, v8

    .line 301
    .line 302
    const-string v8, "vip_level"

    .line 303
    .line 304
    invoke-interface {v14, v8, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    const-string v0, "user_vip_level"

    .line 309
    .line 310
    invoke-interface {v14, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const/4 v3, 0x0

    .line 319
    invoke-static {v0, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    const-string v0, "pk_id"

    .line 324
    .line 325
    move-object/from16 v18, v8

    .line 326
    .line 327
    const-string v8, "is_purchased"

    .line 328
    .line 329
    move-object/from16 v19, v5

    .line 330
    .line 331
    const-string v5, "purchased_num"

    .line 332
    .line 333
    move-object/from16 v20, v5

    .line 334
    .line 335
    const-string v5, "purchase_num"

    .line 336
    .line 337
    move-object/from16 v21, v5

    .line 338
    .line 339
    const-string v5, "can_exchange"

    .line 340
    .line 341
    if-nez v1, :cond_10

    .line 342
    .line 343
    const-string v3, "1"

    .line 344
    .line 345
    const-string v18, "600023"

    .line 346
    .line 347
    const-string v22, "\u91d1\u676f"

    .line 348
    .line 349
    const/16 v23, 0x10c

    .line 350
    .line 351
    const/16 v1, 0x14

    .line 352
    .line 353
    move-object/from16 v25, v0

    .line 354
    .line 355
    move-object/from16 v0, p0

    .line 356
    .line 357
    move-object v1, v2

    .line 358
    move-object/from16 v27, v2

    .line 359
    .line 360
    move-object v2, v3

    .line 361
    move-object/from16 v28, p1

    .line 362
    .line 363
    move-object/from16 v3, v18

    .line 364
    .line 365
    move-object/from16 p1, v12

    .line 366
    .line 367
    move v12, v4

    .line 368
    move-object/from16 v4, v22

    .line 369
    .line 370
    move-object/from16 v31, v11

    .line 371
    .line 372
    move/from16 v30, v13

    .line 373
    .line 374
    move-object/from16 v32, v15

    .line 375
    .line 376
    move-object/from16 v29, v19

    .line 377
    .line 378
    move-object/from16 v13, v20

    .line 379
    .line 380
    move-object/from16 v11, v21

    .line 381
    .line 382
    move-object v15, v5

    .line 383
    move/from16 v5, v23

    .line 384
    .line 385
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    const-string v2, "2"

    .line 389
    .line 390
    const-string v3, "600024"

    .line 391
    .line 392
    const-string v4, "\u94f6\u676f"

    .line 393
    .line 394
    const/16 v5, 0x64

    .line 395
    .line 396
    move-object/from16 v1, v27

    .line 397
    .line 398
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    .line 400
    .line 401
    const-string v2, "3"

    .line 402
    .line 403
    const-string v3, "600025"

    .line 404
    .line 405
    const-string v4, "\u94dc\u676f"

    .line 406
    .line 407
    const/16 v5, 0xa

    .line 408
    .line 409
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    const-string v2, "4"

    .line 413
    .line 414
    const-string v3, "600032"

    .line 415
    .line 416
    const-string v4, "\u5c06\u519b\u76cf"

    .line 417
    .line 418
    const/16 v5, 0xa78

    .line 419
    .line 420
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    .line 422
    .line 423
    const-string v2, "5"

    .line 424
    .line 425
    const-string v3, "600001"

    .line 426
    .line 427
    const-string v4, "\u91d1\u5b9d\u7bb1"

    .line 428
    .line 429
    const/16 v5, 0x32

    .line 430
    .line 431
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    .line 433
    .line 434
    const-string v2, "6"

    .line 435
    .line 436
    const-string v3, "600002"

    .line 437
    .line 438
    const-string v4, "\u94f6\u5b9d\u7bb1"

    .line 439
    .line 440
    const/16 v5, 0x1e

    .line 441
    .line 442
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    .line 444
    .line 445
    const-string v2, "7"

    .line 446
    .line 447
    const-string v3, "600003"

    .line 448
    .line 449
    const-string v4, "\u94dc\u5b9d\u7bb1"

    .line 450
    .line 451
    const/16 v5, 0xa

    .line 452
    .line 453
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    .line 455
    .line 456
    const-string v2, "8"

    .line 457
    .line 458
    const-string v3, "600004"

    .line 459
    .line 460
    const-string v4, "\u91d1\u94a5\u5319"

    .line 461
    .line 462
    const/16 v5, 0x32

    .line 463
    .line 464
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    .line 466
    .line 467
    const-string v2, "9"

    .line 468
    .line 469
    const-string v3, "600005"

    .line 470
    .line 471
    const-string v4, "\u94f6\u94a5\u5319"

    .line 472
    .line 473
    const/16 v5, 0x1e

    .line 474
    .line 475
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 476
    .line 477
    .line 478
    const-string v2, "10"

    .line 479
    .line 480
    const-string v3, "600006"

    .line 481
    .line 482
    const-string v4, "\u94dc\u94a5\u5319"

    .line 483
    .line 484
    const/16 v5, 0xa

    .line 485
    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    const-string v2, "11"

    .line 490
    .line 491
    const-string v3, "600007"

    .line 492
    .line 493
    const-string v4, "\u5305\u5b50"

    .line 494
    .line 495
    const/16 v18, 0x32

    .line 496
    .line 497
    const/16 v5, 0x14

    .line 498
    .line 499
    invoke-virtual {v9, v5}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 500
    .line 501
    .line 502
    move-result v19

    .line 503
    const-string v0, "11"

    .line 504
    .line 505
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 506
    .line 507
    .line 508
    move-result v20

    .line 509
    move-object/from16 v0, p0

    .line 510
    .line 511
    move-object/from16 v26, v15

    .line 512
    .line 513
    move v15, v5

    .line 514
    move/from16 v5, v18

    .line 515
    .line 516
    move-object/from16 v33, v6

    .line 517
    .line 518
    move/from16 v6, v19

    .line 519
    .line 520
    move/from16 v34, v7

    .line 521
    .line 522
    move/from16 v7, v20

    .line 523
    .line 524
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 525
    .line 526
    .line 527
    const-string v2, "12"

    .line 528
    .line 529
    const-string v3, "600008"

    .line 530
    .line 531
    const-string v4, "\u7ea2\u8336"

    .line 532
    .line 533
    invoke-virtual {v9, v15}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    const-string v0, "12"

    .line 538
    .line 539
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    move-object/from16 v0, p0

    .line 544
    .line 545
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 546
    .line 547
    .line 548
    const-string v2, "13"

    .line 549
    .line 550
    const-string v3, "600009"

    .line 551
    .line 552
    const-string v4, "\u666e\u901a\u4f20\u627f\u7b26"

    .line 553
    .line 554
    const/16 v5, 0x62

    .line 555
    .line 556
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 557
    .line 558
    .line 559
    const-string v2, "14"

    .line 560
    .line 561
    const-string v3, "600010"

    .line 562
    .line 563
    const-string v4, "\u9ad8\u7ea7\u4f20\u627f\u7b26"

    .line 564
    .line 565
    const/16 v5, 0xc6

    .line 566
    .line 567
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 568
    .line 569
    .line 570
    const-string v2, "15"

    .line 571
    .line 572
    const-string v3, "600011"

    .line 573
    .line 574
    const-string v4, "\u8d85\u7ea7\u4f20\u627f\u7b26"

    .line 575
    .line 576
    const/16 v5, 0x12a

    .line 577
    .line 578
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    const-string v2, "38"

    .line 582
    .line 583
    const-string v3, "600037"

    .line 584
    .line 585
    const-string v4, "\u8bb8\u613f\u6d41\u661f"

    .line 586
    .line 587
    const/16 v5, 0xc8

    .line 588
    .line 589
    const/4 v0, 0x2

    .line 590
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    const-string v0, "38"

    .line 595
    .line 596
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 597
    .line 598
    .line 599
    move-result v7

    .line 600
    move-object/from16 v0, p0

    .line 601
    .line 602
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 603
    .line 604
    .line 605
    const-string v2, "39"

    .line 606
    .line 607
    const-string v3, "600065"

    .line 608
    .line 609
    const-string v4, "\u8bcf\u4ee4"

    .line 610
    .line 611
    const/16 v5, 0x32

    .line 612
    .line 613
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 614
    .line 615
    .line 616
    const-string v2, "44"

    .line 617
    .line 618
    const-string v3, "600013"

    .line 619
    .line 620
    const-string v4, "\u52fe\u7389"

    .line 621
    .line 622
    const/16 v5, 0x1e

    .line 623
    .line 624
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 625
    .line 626
    .line 627
    const-string v2, "45"

    .line 628
    .line 629
    const-string v3, "600076"

    .line 630
    .line 631
    const-string v4, "\u6253\u5b54\u77f3"

    .line 632
    .line 633
    const/16 v5, 0x64

    .line 634
    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 636
    .line 637
    .line 638
    const-string v2, "46"

    .line 639
    .line 640
    const-string v3, "600077"

    .line 641
    .line 642
    const-string v4, "\u6d17\u70bc\u77f3"

    .line 643
    .line 644
    const/16 v5, 0x1e

    .line 645
    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 647
    .line 648
    .line 649
    const-string v2, "47"

    .line 650
    .line 651
    const-string v3, "600078"

    .line 652
    .line 653
    const-string v4, "1\u7ea7\u5b9d\u77f3\u7bb1"

    .line 654
    .line 655
    const/16 v5, 0x32

    .line 656
    .line 657
    const/16 v0, 0x3e7

    .line 658
    .line 659
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 660
    .line 661
    .line 662
    move-result v6

    .line 663
    const-string v0, "47"

    .line 664
    .line 665
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 666
    .line 667
    .line 668
    move-result v7

    .line 669
    move-object/from16 v0, p0

    .line 670
    .line 671
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 672
    .line 673
    .line 674
    const-string v2, "48"

    .line 675
    .line 676
    const-string v3, "600079"

    .line 677
    .line 678
    const-string v4, "2\u7ea7\u5b9d\u77f3\u7bb1"

    .line 679
    .line 680
    const/16 v5, 0xa0

    .line 681
    .line 682
    const/16 v0, 0x190

    .line 683
    .line 684
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 685
    .line 686
    .line 687
    move-result v6

    .line 688
    const-string v0, "48"

    .line 689
    .line 690
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 691
    .line 692
    .line 693
    move-result v7

    .line 694
    move-object/from16 v0, p0

    .line 695
    .line 696
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 697
    .line 698
    .line 699
    const-string v2, "49"

    .line 700
    .line 701
    const-string v3, "600080"

    .line 702
    .line 703
    const-string v4, "3\u7ea7\u5b9d\u77f3\u7bb1"

    .line 704
    .line 705
    const/16 v5, 0x1f4

    .line 706
    .line 707
    const/16 v0, 0xc8

    .line 708
    .line 709
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 710
    .line 711
    .line 712
    move-result v6

    .line 713
    const-string v0, "49"

    .line 714
    .line 715
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    move-object/from16 v0, p0

    .line 720
    .line 721
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 722
    .line 723
    .line 724
    const-string v0, "51"

    .line 725
    .line 726
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/x0;->V0(Ljava/lang/String;I)Z

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    if-eqz v1, :cond_a

    .line 731
    .line 732
    const-string v2, "51"

    .line 733
    .line 734
    const-string v3, "600081"

    .line 735
    .line 736
    const-string v4, "4\u7ea7\u5b9d\u77f3\u7bb1"

    .line 737
    .line 738
    const/16 v5, 0x640

    .line 739
    .line 740
    const/16 v1, 0x64

    .line 741
    .line 742
    invoke-virtual {v9, v1}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 747
    .line 748
    .line 749
    move-result v7

    .line 750
    move-object/from16 v0, p0

    .line 751
    .line 752
    move-object/from16 v1, v27

    .line 753
    .line 754
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 755
    .line 756
    .line 757
    :cond_a
    const-string v0, "52"

    .line 758
    .line 759
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/x0;->V0(Ljava/lang/String;I)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_b

    .line 764
    .line 765
    const-string v2, "52"

    .line 766
    .line 767
    const-string v3, "600082"

    .line 768
    .line 769
    const-string v4, "5\u7ea7\u5b9d\u77f3\u7bb1"

    .line 770
    .line 771
    const/16 v5, 0x1388

    .line 772
    .line 773
    const/16 v1, 0x32

    .line 774
    .line 775
    invoke-virtual {v9, v1}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 780
    .line 781
    .line 782
    move-result v7

    .line 783
    move-object/from16 v0, p0

    .line 784
    .line 785
    move-object/from16 v1, v27

    .line 786
    .line 787
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 788
    .line 789
    .line 790
    :cond_b
    const-string v2, "50"

    .line 791
    .line 792
    const-string v3, "600014"

    .line 793
    .line 794
    const-string v4, "\u6539\u540d\u7b26"

    .line 795
    .line 796
    const/16 v5, 0x63

    .line 797
    .line 798
    move-object/from16 v0, p0

    .line 799
    .line 800
    move-object/from16 v1, v27

    .line 801
    .line 802
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 803
    .line 804
    .line 805
    const-string v2, "55"

    .line 806
    .line 807
    const-string v3, "600212"

    .line 808
    .line 809
    const-string v4, "\u89c9\u9192\u5b9d\u7bb1\u94a5\u5319"

    .line 810
    .line 811
    const/16 v5, 0xc8

    .line 812
    .line 813
    const/16 v0, 0x3e7

    .line 814
    .line 815
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 816
    .line 817
    .line 818
    move-result v6

    .line 819
    const-string v0, "55"

    .line 820
    .line 821
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 822
    .line 823
    .line 824
    move-result v7

    .line 825
    move-object/from16 v0, p0

    .line 826
    .line 827
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 828
    .line 829
    .line 830
    if-eqz v16, :cond_c

    .line 831
    .line 832
    const-string v2, "53"

    .line 833
    .line 834
    const-string v3, "600036"

    .line 835
    .line 836
    const-string v4, "\u5587\u53ed"

    .line 837
    .line 838
    const/4 v5, 0x5

    .line 839
    move-object/from16 v0, p0

    .line 840
    .line 841
    move-object/from16 v1, v27

    .line 842
    .line 843
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/handler/x0;->j(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 844
    .line 845
    .line 846
    :cond_c
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    if-eqz v1, :cond_f

    .line 855
    .line 856
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    check-cast v1, Ljava/util/Map;

    .line 861
    .line 862
    const/4 v2, 0x0

    .line 863
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    invoke-interface {v1, v11, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    invoke-static {v3, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    move-object/from16 v12, v25

    .line 880
    .line 881
    if-gtz v3, :cond_e

    .line 882
    .line 883
    :cond_d
    move-object/from16 v15, v26

    .line 884
    .line 885
    goto :goto_7

    .line 886
    :cond_e
    invoke-interface {v1, v12, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v4

    .line 890
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    invoke-static {v4, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 899
    .line 900
    .line 901
    move-result-object v5

    .line 902
    invoke-interface {v1, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    if-lt v4, v3, :cond_d

    .line 906
    .line 907
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 915
    .line 916
    move-object/from16 v15, v26

    .line 917
    .line 918
    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    :goto_7
    move-object/from16 v25, v12

    .line 922
    .line 923
    move-object/from16 v26, v15

    .line 924
    .line 925
    goto :goto_6

    .line 926
    :cond_f
    move-object v2, v9

    .line 927
    move-object v7, v10

    .line 928
    move-object v4, v14

    .line 929
    move-object/from16 v52, v17

    .line 930
    .line 931
    move-object/from16 v1, v27

    .line 932
    .line 933
    goto/16 :goto_25

    .line 934
    .line 935
    :cond_10
    move-object/from16 v28, p1

    .line 936
    .line 937
    move-object/from16 v27, v2

    .line 938
    .line 939
    move-object/from16 v33, v6

    .line 940
    .line 941
    move/from16 v34, v7

    .line 942
    .line 943
    move-object/from16 v31, v11

    .line 944
    .line 945
    move-object/from16 p1, v12

    .line 946
    .line 947
    move/from16 v30, v13

    .line 948
    .line 949
    move-object/from16 v32, v15

    .line 950
    .line 951
    move-object/from16 v29, v19

    .line 952
    .line 953
    move-object/from16 v13, v20

    .line 954
    .line 955
    move-object/from16 v11, v21

    .line 956
    .line 957
    move-object v12, v0

    .line 958
    move-object v15, v5

    .line 959
    const-string v0, "shop_all_pet_gift"

    .line 960
    .line 961
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    .line 962
    .line 963
    .line 964
    move-result v7

    .line 965
    const-string v2, "54"

    .line 966
    .line 967
    const-string v4, "191006"

    .line 968
    .line 969
    const-string v5, "\u5168\u840c\u5ba0\u793c\u5305"

    .line 970
    .line 971
    const/16 v6, 0x64

    .line 972
    .line 973
    const/16 v16, 0x1

    .line 974
    .line 975
    const/4 v1, 0x5

    .line 976
    move-object/from16 v0, p0

    .line 977
    .line 978
    move/from16 v19, v1

    .line 979
    .line 980
    move-object/from16 v1, v27

    .line 981
    .line 982
    move/from16 v20, v3

    .line 983
    .line 984
    move-object v3, v4

    .line 985
    move-object v4, v5

    .line 986
    move v5, v6

    .line 987
    move/from16 v6, v16

    .line 988
    .line 989
    move/from16 v16, v7

    .line 990
    .line 991
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 992
    .line 993
    .line 994
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    const/4 v1, 0x1

    .line 999
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v2

    .line 1003
    sub-int/2addr v0, v1

    .line 1004
    move-object/from16 v7, v27

    .line 1005
    .line 1006
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    check-cast v0, Ljava/util/Map;

    .line 1011
    .line 1012
    const-string v1, "item_title"

    .line 1013
    .line 1014
    const-string v3, "\u5168\u840c\u5ba0\u793c\u5305"

    .line 1015
    .line 1016
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    const-string v6, "item_desc"

    .line 1020
    .line 1021
    const-string v1, "\u8d2d\u4e70\u540e\u83b7\u5f97\u5012\u9709\u5446\u5446\u3001\u5c0f\u9e21\u54d4\u54d4\u3001\u529f\u592b\u963f\u5947\u3001\u987d\u76ae\u6dd8\u6dd8\u3001\u6d63\u718a\u6ce2\u6ce2\u3001\u81f3\u5c0a\u5c0f\u5b9d\u54041\u53ea\u3002"

    .line 1022
    .line 1023
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    sget-object v1, Lcom/sgscq/vpn/m;->a:Ljava/util/List;

    .line 1027
    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    .line 1029
    .line 1030
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    sget-object v3, Lcom/sgscq/vpn/m;->a:Ljava/util/List;

    .line 1034
    .line 1035
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v3

    .line 1039
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v4

    .line 1043
    const-string v5, "id"

    .line 1044
    .line 1045
    if-eqz v4, :cond_11

    .line 1046
    .line 1047
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v4

    .line 1051
    check-cast v4, Ljava/lang/String;

    .line 1052
    .line 1053
    const-string v35, "item_id"

    .line 1054
    .line 1055
    const-string v37, "general_id"

    .line 1056
    .line 1057
    const-string v39, "num"

    .line 1058
    .line 1059
    const-string v41, "item_num"

    .line 1060
    .line 1061
    const-string v43, "level"

    .line 1062
    .line 1063
    const-string v45, "type"

    .line 1064
    .line 1065
    const-string v47, "item_type"

    .line 1066
    .line 1067
    const/16 v21, 0x1f

    .line 1068
    .line 1069
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v48

    .line 1073
    move-object/from16 v36, v4

    .line 1074
    .line 1075
    move-object/from16 v38, v4

    .line 1076
    .line 1077
    move-object/from16 v40, v2

    .line 1078
    .line 1079
    move-object/from16 v42, v2

    .line 1080
    .line 1081
    move-object/from16 v44, v2

    .line 1082
    .line 1083
    move-object/from16 v46, v2

    .line 1084
    .line 1085
    move-object/from16 v21, v2

    .line 1086
    .line 1087
    filled-new-array/range {v35 .. v48}, [Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-static {v5, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-object/from16 v2, v21

    .line 1099
    .line 1100
    goto :goto_8

    .line 1101
    :cond_11
    const-string v4, "add_list"

    .line 1102
    .line 1103
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    const/4 v1, 0x1

    .line 1107
    move/from16 v2, v16

    .line 1108
    .line 1109
    if-lt v2, v1, :cond_12

    .line 1110
    .line 1111
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1112
    .line 1113
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    :cond_12
    const-string v16, "40"

    .line 1117
    .line 1118
    const/16 v21, 0xc8

    .line 1119
    .line 1120
    const/16 v22, 0x64

    .line 1121
    .line 1122
    const/16 v23, 0x5

    .line 1123
    .line 1124
    const/16 v24, 0x0

    .line 1125
    .line 1126
    move-object/from16 v0, p0

    .line 1127
    .line 1128
    move-object v1, v7

    .line 1129
    move-object v2, v14

    .line 1130
    move/from16 v3, v20

    .line 1131
    .line 1132
    move-object/from16 v49, v4

    .line 1133
    .line 1134
    move-object/from16 v4, v16

    .line 1135
    .line 1136
    move-object/from16 v50, v5

    .line 1137
    .line 1138
    move/from16 v5, v21

    .line 1139
    .line 1140
    move-object/from16 v51, v6

    .line 1141
    .line 1142
    move/from16 v6, v22

    .line 1143
    .line 1144
    move-object/from16 v27, v7

    .line 1145
    .line 1146
    move/from16 v7, v23

    .line 1147
    .line 1148
    move-object/from16 v26, v15

    .line 1149
    .line 1150
    move-object/from16 v52, v17

    .line 1151
    .line 1152
    move-object/from16 v16, v18

    .line 1153
    .line 1154
    move-object v15, v8

    .line 1155
    move/from16 v8, v24

    .line 1156
    .line 1157
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->c(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;IIII)V

    .line 1158
    .line 1159
    .line 1160
    const-string v4, "41"

    .line 1161
    .line 1162
    const/16 v5, 0x3e8

    .line 1163
    .line 1164
    const/16 v6, 0x12c

    .line 1165
    .line 1166
    const/4 v7, 0x5

    .line 1167
    const/4 v8, 0x0

    .line 1168
    move-object/from16 v1, v27

    .line 1169
    .line 1170
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->c(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;IIII)V

    .line 1171
    .line 1172
    .line 1173
    const-string v4, "42"

    .line 1174
    .line 1175
    const/16 v5, 0x2710

    .line 1176
    .line 1177
    const/16 v6, 0x9c4

    .line 1178
    .line 1179
    const/16 v7, 0x14

    .line 1180
    .line 1181
    const/16 v8, 0xf

    .line 1182
    .line 1183
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->c(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;IIII)V

    .line 1184
    .line 1185
    .line 1186
    const/4 v8, 0x4

    .line 1187
    const/16 v0, 0xf

    .line 1188
    .line 1189
    const-string v7, "361001"

    .line 1190
    .line 1191
    const/16 v17, 0x13

    .line 1192
    .line 1193
    const-string v6, "num"

    .line 1194
    .line 1195
    const-string v5, "item_num"

    .line 1196
    .line 1197
    move/from16 v4, v20

    .line 1198
    .line 1199
    if-ge v4, v0, :cond_13

    .line 1200
    .line 1201
    move/from16 v24, v4

    .line 1202
    .line 1203
    move-object v3, v7

    .line 1204
    move/from16 v18, v8

    .line 1205
    .line 1206
    move-object/from16 v8, v27

    .line 1207
    .line 1208
    move-object/from16 v2, v49

    .line 1209
    .line 1210
    move-object/from16 v4, v50

    .line 1211
    .line 1212
    move-object v7, v5

    .line 1213
    move-object/from16 v5, v51

    .line 1214
    .line 1215
    goto/16 :goto_c

    .line 1216
    .line 1217
    :cond_13
    const-string v0, "purchased_daily_vip15_exp_book_gift"

    .line 1218
    .line 1219
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    instance-of v1, v0, Ljava/util/Map;

    .line 1224
    .line 1225
    if-nez v1, :cond_14

    .line 1226
    .line 1227
    goto :goto_9

    .line 1228
    :cond_14
    check-cast v0, Ljava/util/Map;

    .line 1229
    .line 1230
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v1

    .line 1234
    const-string v2, "day"

    .line 1235
    .line 1236
    invoke-static {v0, v2, v1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v1

    .line 1240
    if-nez v1, :cond_15

    .line 1241
    .line 1242
    :goto_9
    const/4 v0, 0x0

    .line 1243
    :goto_a
    move/from16 v18, v0

    .line 1244
    .line 1245
    goto :goto_b

    .line 1246
    :cond_15
    const-string v1, "count"

    .line 1247
    .line 1248
    const/4 v2, 0x0

    .line 1249
    invoke-static {v0, v1, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    goto :goto_a

    .line 1254
    :goto_b
    const-string v2, "43"

    .line 1255
    .line 1256
    const-string v3, "361001"

    .line 1257
    .line 1258
    const-string v20, "\u7ecf\u9a8c\u795e\u4e66\u793c\u5305"

    .line 1259
    .line 1260
    const/16 v21, 0x3e8

    .line 1261
    .line 1262
    const/16 v0, 0x14

    .line 1263
    .line 1264
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 1265
    .line 1266
    .line 1267
    move-result v22

    .line 1268
    const/16 v23, 0xf

    .line 1269
    .line 1270
    move-object/from16 v0, p0

    .line 1271
    .line 1272
    move-object/from16 v1, v27

    .line 1273
    .line 1274
    move/from16 v24, v4

    .line 1275
    .line 1276
    move-object/from16 v4, v20

    .line 1277
    .line 1278
    move-object/from16 v53, v5

    .line 1279
    .line 1280
    move/from16 v5, v21

    .line 1281
    .line 1282
    move-object/from16 v54, v6

    .line 1283
    .line 1284
    move/from16 v6, v22

    .line 1285
    .line 1286
    move-object/from16 v55, v7

    .line 1287
    .line 1288
    move/from16 v7, v18

    .line 1289
    .line 1290
    move/from16 v18, v8

    .line 1291
    .line 1292
    move/from16 v8, v23

    .line 1293
    .line 1294
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->l(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    add-int/lit8 v0, v0, -0x1

    .line 1302
    .line 1303
    move-object/from16 v8, v27

    .line 1304
    .line 1305
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    check-cast v0, Ljava/util/Map;

    .line 1310
    .line 1311
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v1

    .line 1315
    move-object/from16 v7, v53

    .line 1316
    .line 1317
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    move-object/from16 v6, v54

    .line 1325
    .line 1326
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    const-string v1, "\u8d2d\u4e70\u540e\u83b7\u5f97\u7ecf\u9a8c\u795e\u4e66\u00d75\uff0c\u6bcf\u65e5\u9650\u8d2d20\u6b21\u3002"

    .line 1330
    .line 1331
    move-object/from16 v5, v51

    .line 1332
    .line 1333
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    const-string v35, "item_id"

    .line 1337
    .line 1338
    const-string v36, "361001"

    .line 1339
    .line 1340
    const-string v37, "num"

    .line 1341
    .line 1342
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v38

    .line 1346
    const-string v39, "item_num"

    .line 1347
    .line 1348
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v40

    .line 1352
    const-string v41, "type"

    .line 1353
    .line 1354
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v42

    .line 1358
    const-string v43, "item_type"

    .line 1359
    .line 1360
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v44

    .line 1364
    const-string v45, "level"

    .line 1365
    .line 1366
    const/4 v1, 0x1

    .line 1367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v46

    .line 1371
    filled-new-array/range {v35 .. v46}, [Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v1

    .line 1375
    move-object/from16 v4, v50

    .line 1376
    .line 1377
    move-object/from16 v3, v55

    .line 1378
    .line 1379
    invoke-static {v4, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v1

    .line 1383
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v1

    .line 1387
    move-object/from16 v2, v49

    .line 1388
    .line 1389
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    .line 1391
    .line 1392
    :goto_c
    iget-object v0, v9, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1393
    .line 1394
    const/16 v20, 0x0

    .line 1395
    .line 1396
    if-nez v0, :cond_16

    .line 1397
    .line 1398
    move-object/from16 v0, v20

    .line 1399
    .line 1400
    goto :goto_d

    .line 1401
    :cond_16
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1402
    .line 1403
    :goto_d
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->A(Landroid/content/Context;)I

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    const/4 v1, 0x1

    .line 1408
    if-ge v0, v1, :cond_17

    .line 1409
    .line 1410
    move-object/from16 v36, v12

    .line 1411
    .line 1412
    move-object/from16 v27, v13

    .line 1413
    .line 1414
    move-object/from16 v25, v15

    .line 1415
    .line 1416
    move-object v12, v2

    .line 1417
    move-object v15, v5

    .line 1418
    goto/16 :goto_e

    .line 1419
    .line 1420
    :cond_17
    const-string v0, "56"

    .line 1421
    .line 1422
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->h0(Ljava/lang/String;Ljava/util/Map;)I

    .line 1423
    .line 1424
    .line 1425
    move-result v21

    .line 1426
    const-string v22, "56"

    .line 1427
    .line 1428
    const-string v23, "361001"

    .line 1429
    .line 1430
    const-string v25, "\u7ecf\u9a8c\u795e\u4e66\u793c\u5305"

    .line 1431
    .line 1432
    const/16 v27, 0x3e8

    .line 1433
    .line 1434
    const/16 v0, 0x14

    .line 1435
    .line 1436
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 1437
    .line 1438
    .line 1439
    move-result v35

    .line 1440
    move-object/from16 v0, p0

    .line 1441
    .line 1442
    move-object v1, v8

    .line 1443
    move-object/from16 v56, v2

    .line 1444
    .line 1445
    move-object/from16 v2, v22

    .line 1446
    .line 1447
    move-object/from16 v57, v3

    .line 1448
    .line 1449
    move-object/from16 v3, v23

    .line 1450
    .line 1451
    move-object/from16 v36, v12

    .line 1452
    .line 1453
    move-object v12, v4

    .line 1454
    move-object/from16 v4, v25

    .line 1455
    .line 1456
    move-object/from16 v25, v15

    .line 1457
    .line 1458
    move-object v15, v5

    .line 1459
    move/from16 v5, v27

    .line 1460
    .line 1461
    move-object/from16 v58, v6

    .line 1462
    .line 1463
    move/from16 v6, v35

    .line 1464
    .line 1465
    move-object/from16 v27, v13

    .line 1466
    .line 1467
    move-object v13, v7

    .line 1468
    move/from16 v7, v21

    .line 1469
    .line 1470
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    add-int/lit8 v0, v0, -0x1

    .line 1478
    .line 1479
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    check-cast v0, Ljava/util/Map;

    .line 1484
    .line 1485
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v1

    .line 1489
    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v1

    .line 1496
    move-object/from16 v2, v58

    .line 1497
    .line 1498
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    const-string v1, "\u8d2d\u4e70\u540e\u83b7\u5f97\u7ecf\u9a8c\u795e\u4e66\u00d75\uff0c\u6bcf\u65e5\u9650\u8d2d20\u6b21\uff1b\u7231\u53d1\u7535 LV1 \u53ca\u4ee5\u4e0a\u4e13\u4eab\u3002"

    .line 1502
    .line 1503
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    const-string v37, "item_id"

    .line 1507
    .line 1508
    const-string v38, "361001"

    .line 1509
    .line 1510
    const-string v39, "num"

    .line 1511
    .line 1512
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v40

    .line 1516
    const-string v41, "item_num"

    .line 1517
    .line 1518
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v42

    .line 1522
    const-string v43, "type"

    .line 1523
    .line 1524
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v44

    .line 1528
    const-string v45, "item_type"

    .line 1529
    .line 1530
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v46

    .line 1534
    const-string v47, "level"

    .line 1535
    .line 1536
    const/4 v1, 0x1

    .line 1537
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v48

    .line 1541
    filled-new-array/range {v37 .. v48}, [Ljava/lang/Object;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v1

    .line 1545
    move-object/from16 v2, v57

    .line 1546
    .line 1547
    invoke-static {v12, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v1

    .line 1551
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v1

    .line 1555
    move-object/from16 v12, v56

    .line 1556
    .line 1557
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    .line 1559
    .line 1560
    :goto_e
    const-string v2, "19"

    .line 1561
    .line 1562
    const-string v3, "791758"

    .line 1563
    .line 1564
    const-string v4, "\u9996\u6b21\u5145\u503c\u5927\u793c\u5305"

    .line 1565
    .line 1566
    const/16 v5, 0x12c

    .line 1567
    .line 1568
    const/4 v6, 0x1

    .line 1569
    const-string v0, "791758"

    .line 1570
    .line 1571
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    .line 1572
    .line 1573
    .line 1574
    move-result v7

    .line 1575
    move-object/from16 v0, p0

    .line 1576
    .line 1577
    move-object v1, v8

    .line 1578
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1579
    .line 1580
    .line 1581
    const-string v2, "20"

    .line 1582
    .line 1583
    const-string v3, "791438"

    .line 1584
    .line 1585
    const-string v4, "\u6bcf\u65e5\u7279\u6743\u793c\u5305"

    .line 1586
    .line 1587
    const/16 v5, 0xc8

    .line 1588
    .line 1589
    move/from16 v0, v19

    .line 1590
    .line 1591
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/handler/x0;->N(I)I

    .line 1592
    .line 1593
    .line 1594
    move-result v6

    .line 1595
    const-string v0, "791438"

    .line 1596
    .line 1597
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    .line 1598
    .line 1599
    .line 1600
    move-result v7

    .line 1601
    move-object/from16 v0, p0

    .line 1602
    .line 1603
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1604
    .line 1605
    .line 1606
    const-string v2, "21"

    .line 1607
    .line 1608
    const-string v3, "791550"

    .line 1609
    .line 1610
    const-string v4, "\u81f3\u5c0a\u4f1a\u5458\u8d35\u5bbe\u793c\u5305"

    .line 1611
    .line 1612
    const/16 v5, 0x12c

    .line 1613
    .line 1614
    const/4 v6, 0x1

    .line 1615
    const-string v0, "791550"

    .line 1616
    .line 1617
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/x0;->g0(Ljava/lang/String;Ljava/util/Map;)I

    .line 1618
    .line 1619
    .line 1620
    move-result v7

    .line 1621
    move-object/from16 v0, p0

    .line 1622
    .line 1623
    invoke-virtual/range {v0 .. v7}, Lcom/sgscq/vpn/handler/x0;->k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1624
    .line 1625
    .line 1626
    const-string v4, "22"

    .line 1627
    .line 1628
    const-string v5, "710000"

    .line 1629
    .line 1630
    const-string v6, "\u81f3\u5c0a\u4f1a\u54580\u5927\u793c\u5305"

    .line 1631
    .line 1632
    const/4 v7, 0x0

    .line 1633
    const/4 v13, 0x0

    .line 1634
    move-object v2, v14

    .line 1635
    move/from16 v3, v24

    .line 1636
    .line 1637
    move-object/from16 v17, v8

    .line 1638
    .line 1639
    move v8, v13

    .line 1640
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1641
    .line 1642
    .line 1643
    const-string v4, "23"

    .line 1644
    .line 1645
    const-string v5, "710021"

    .line 1646
    .line 1647
    const-string v6, "\u81f3\u5c0a\u4f1a\u54581\u5927\u793c\u5305"

    .line 1648
    .line 1649
    const/16 v13, 0x1f4

    .line 1650
    .line 1651
    const/4 v8, 0x1

    .line 1652
    move-object/from16 v1, v17

    .line 1653
    .line 1654
    move v7, v13

    .line 1655
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1656
    .line 1657
    .line 1658
    const-string v4, "24"

    .line 1659
    .line 1660
    const-string v5, "710022"

    .line 1661
    .line 1662
    const-string v6, "\u81f3\u5c0a\u4f1a\u54582\u5927\u793c\u5305"

    .line 1663
    .line 1664
    const/4 v8, 0x2

    .line 1665
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1666
    .line 1667
    .line 1668
    const-string v4, "25"

    .line 1669
    .line 1670
    const-string v5, "710023"

    .line 1671
    .line 1672
    const-string v6, "\u81f3\u5c0a\u4f1a\u54583\u5927\u793c\u5305"

    .line 1673
    .line 1674
    const/4 v8, 0x3

    .line 1675
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1676
    .line 1677
    .line 1678
    const-string v4, "26"

    .line 1679
    .line 1680
    const-string v5, "710024"

    .line 1681
    .line 1682
    const-string v6, "\u81f3\u5c0a\u4f1a\u54584\u5927\u793c\u5305"

    .line 1683
    .line 1684
    const/16 v13, 0x320

    .line 1685
    .line 1686
    const/4 v8, 0x4

    .line 1687
    move v7, v13

    .line 1688
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1689
    .line 1690
    .line 1691
    const-string v4, "27"

    .line 1692
    .line 1693
    const-string v5, "710025"

    .line 1694
    .line 1695
    const-string v6, "\u81f3\u5c0a\u4f1a\u54585\u5927\u793c\u5305"

    .line 1696
    .line 1697
    const/4 v8, 0x5

    .line 1698
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1699
    .line 1700
    .line 1701
    const-string v4, "28"

    .line 1702
    .line 1703
    const-string v5, "710026"

    .line 1704
    .line 1705
    const-string v6, "\u81f3\u5c0a\u4f1a\u54586\u5927\u793c\u5305"

    .line 1706
    .line 1707
    const/4 v8, 0x6

    .line 1708
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1709
    .line 1710
    .line 1711
    const-string v4, "29"

    .line 1712
    .line 1713
    const-string v5, "710027"

    .line 1714
    .line 1715
    const-string v6, "\u81f3\u5c0a\u4f1a\u54587\u5927\u793c\u5305"

    .line 1716
    .line 1717
    const/16 v7, 0x3e8

    .line 1718
    .line 1719
    const/4 v8, 0x7

    .line 1720
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1721
    .line 1722
    .line 1723
    const-string v4, "30"

    .line 1724
    .line 1725
    const-string v5, "710008"

    .line 1726
    .line 1727
    const-string v6, "\u81f3\u5c0a\u4f1a\u54588\u5927\u793c\u5305"

    .line 1728
    .line 1729
    const/16 v7, 0x7d0

    .line 1730
    .line 1731
    const/16 v8, 0x8

    .line 1732
    .line 1733
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1734
    .line 1735
    .line 1736
    const-string v4, "31"

    .line 1737
    .line 1738
    const-string v5, "710009"

    .line 1739
    .line 1740
    const-string v6, "\u81f3\u5c0a\u4f1a\u54589\u5927\u793c\u5305"

    .line 1741
    .line 1742
    const/16 v7, 0xbb8

    .line 1743
    .line 1744
    const/16 v8, 0x9

    .line 1745
    .line 1746
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1747
    .line 1748
    .line 1749
    const-string v4, "32"

    .line 1750
    .line 1751
    const-string v5, "710010"

    .line 1752
    .line 1753
    const-string v6, "\u81f3\u5c0a\u4f1a\u545810\u5927\u793c\u5305"

    .line 1754
    .line 1755
    const/16 v7, 0x1388

    .line 1756
    .line 1757
    const/16 v8, 0xa

    .line 1758
    .line 1759
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1760
    .line 1761
    .line 1762
    const-string v4, "33"

    .line 1763
    .line 1764
    const-string v5, "710011"

    .line 1765
    .line 1766
    const-string v6, "\u81f3\u5c0a\u4f1a\u545811\u5927\u793c\u5305"

    .line 1767
    .line 1768
    const/16 v7, 0x1770

    .line 1769
    .line 1770
    const/16 v8, 0xb

    .line 1771
    .line 1772
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1773
    .line 1774
    .line 1775
    const-string v4, "34"

    .line 1776
    .line 1777
    const-string v5, "710012"

    .line 1778
    .line 1779
    const-string v6, "\u81f3\u5c0a\u4f1a\u545812\u5927\u793c\u5305"

    .line 1780
    .line 1781
    const/16 v13, 0x1f40

    .line 1782
    .line 1783
    const/16 v8, 0xc

    .line 1784
    .line 1785
    move v7, v13

    .line 1786
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1787
    .line 1788
    .line 1789
    const-string v4, "35"

    .line 1790
    .line 1791
    const-string v5, "710013"

    .line 1792
    .line 1793
    const-string v6, "\u81f3\u5c0a\u4f1a\u545813\u5927\u793c\u5305"

    .line 1794
    .line 1795
    const/16 v8, 0xd

    .line 1796
    .line 1797
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1798
    .line 1799
    .line 1800
    const-string v4, "36"

    .line 1801
    .line 1802
    const-string v5, "710032"

    .line 1803
    .line 1804
    const-string v6, "\u81f3\u5c0a\u4f1a\u545814\u5927\u793c\u5305"

    .line 1805
    .line 1806
    const/16 v7, 0x2710

    .line 1807
    .line 1808
    const/16 v8, 0xe

    .line 1809
    .line 1810
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1811
    .line 1812
    .line 1813
    const-string v4, "37"

    .line 1814
    .line 1815
    const-string v5, "791836"

    .line 1816
    .line 1817
    const-string v6, "\u81f3\u5c0a\u4f1a\u545815\u793c\u5305"

    .line 1818
    .line 1819
    const v7, 0x249f0

    .line 1820
    .line 1821
    .line 1822
    const/16 v8, 0xf

    .line 1823
    .line 1824
    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->i(Ljava/util/ArrayList;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1825
    .line 1826
    .line 1827
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 1828
    .line 1829
    const-string v1, "close_time"

    .line 1830
    .line 1831
    const-string v2, "item_price"

    .line 1832
    .line 1833
    const-string v3, "discount_price"

    .line 1834
    .line 1835
    const-string v4, "fate_equip_id"

    .line 1836
    .line 1837
    if-eqz v0, :cond_18

    .line 1838
    .line 1839
    move-object v9, v1

    .line 1840
    move-object/from16 v49, v12

    .line 1841
    .line 1842
    :goto_f
    move-object/from16 v51, v15

    .line 1843
    .line 1844
    move-object/from16 v1, v17

    .line 1845
    .line 1846
    move-object/from16 v8, v25

    .line 1847
    .line 1848
    move-object/from16 v13, v27

    .line 1849
    .line 1850
    goto/16 :goto_19

    .line 1851
    .line 1852
    :cond_18
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 1853
    .line 1854
    .line 1855
    move-result-wide v5

    .line 1856
    iget-object v0, v9, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1857
    .line 1858
    if-nez v0, :cond_19

    .line 1859
    .line 1860
    move-object/from16 v0, v20

    .line 1861
    .line 1862
    goto :goto_10

    .line 1863
    :cond_19
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1864
    .line 1865
    :goto_10
    invoke-static {v0, v5, v6}, Lcom/sgscq/vpn/l2;->a(Landroid/content/Context;J)Lcom/sgscq/vpn/j2;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v0

    .line 1869
    iget-wide v7, v0, Lcom/sgscq/vpn/j2;->h:J

    .line 1870
    .line 1871
    cmp-long v13, v7, v5

    .line 1872
    .line 1873
    if-gtz v13, :cond_1a

    .line 1874
    .line 1875
    const/4 v7, 0x0

    .line 1876
    move-object/from16 v49, v12

    .line 1877
    .line 1878
    goto :goto_11

    .line 1879
    :cond_1a
    sub-long/2addr v7, v5

    .line 1880
    const-wide/16 v21, 0x3e7

    .line 1881
    .line 1882
    add-long v7, v7, v21

    .line 1883
    .line 1884
    const-wide/16 v21, 0x3e8

    .line 1885
    .line 1886
    div-long v7, v7, v21

    .line 1887
    .line 1888
    move-object/from16 v49, v12

    .line 1889
    .line 1890
    const-wide/32 v12, 0x7fffffff

    .line 1891
    .line 1892
    .line 1893
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 1894
    .line 1895
    .line 1896
    move-result-wide v7

    .line 1897
    long-to-int v7, v7

    .line 1898
    :goto_11
    new-instance v8, Ljava/util/ArrayList;

    .line 1899
    .line 1900
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    .line 1902
    .line 1903
    iget-object v12, v0, Lcom/sgscq/vpn/j2;->a:Ljava/util/List;

    .line 1904
    .line 1905
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v12

    .line 1909
    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1910
    .line 1911
    .line 1912
    move-result v13

    .line 1913
    if-eqz v13, :cond_1b

    .line 1914
    .line 1915
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v13

    .line 1919
    check-cast v13, Ljava/util/Map;

    .line 1920
    .line 1921
    move-object/from16 v19, v12

    .line 1922
    .line 1923
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 1924
    .line 1925
    invoke-direct {v12, v13}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    .line 1930
    .line 1931
    move-object/from16 v12, v19

    .line 1932
    .line 1933
    goto :goto_12

    .line 1934
    :cond_1b
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v8

    .line 1938
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1939
    .line 1940
    .line 1941
    move-result v12

    .line 1942
    if-eqz v12, :cond_23

    .line 1943
    .line 1944
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v12

    .line 1948
    check-cast v12, Ljava/util/Map;

    .line 1949
    .line 1950
    invoke-interface {v12, v4, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v13

    .line 1954
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v13

    .line 1958
    move-object/from16 v19, v8

    .line 1959
    .line 1960
    const-string v8, "fate_skill_id"

    .line 1961
    .line 1962
    invoke-interface {v12, v8, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v8

    .line 1966
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v8

    .line 1970
    move-object/from16 v51, v15

    .line 1971
    .line 1972
    const-string v15, "_purchase_key"

    .line 1973
    .line 1974
    invoke-interface {v12, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v15

    .line 1978
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v15

    .line 1982
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 1983
    .line 1984
    .line 1985
    move-result v13

    .line 1986
    if-nez v13, :cond_1f

    .line 1987
    .line 1988
    const-string v8, "purchased_fate_box_goods"

    .line 1989
    .line 1990
    invoke-static {v8, v15, v14}, Lcom/sgscq/vpn/handler/x0;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    .line 1991
    .line 1992
    .line 1993
    move-result v8

    .line 1994
    const/4 v13, 0x0

    .line 1995
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v15

    .line 1999
    invoke-interface {v12, v2, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v15

    .line 2003
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v15

    .line 2007
    invoke-static {v15, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2008
    .line 2009
    .line 2010
    move-result v38

    .line 2011
    move v13, v8

    .line 2012
    iget-wide v8, v0, Lcom/sgscq/vpn/j2;->g:J

    .line 2013
    .line 2014
    const-wide/16 v21, 0x0

    .line 2015
    .line 2016
    cmp-long v15, v8, v21

    .line 2017
    .line 2018
    if-gtz v15, :cond_1c

    .line 2019
    .line 2020
    sget v8, Lcom/sgscq/vpn/config/k;->d:I

    .line 2021
    .line 2022
    const-wide/32 v8, 0xa8c0

    .line 2023
    .line 2024
    .line 2025
    move-object/from16 v21, v0

    .line 2026
    .line 2027
    move-object/from16 v35, v1

    .line 2028
    .line 2029
    const-wide/16 v0, 0x1

    .line 2030
    .line 2031
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2032
    .line 2033
    .line 2034
    move-result-wide v0

    .line 2035
    const-wide/16 v8, 0x3e8

    .line 2036
    .line 2037
    mul-long/2addr v0, v8

    .line 2038
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    .line 2039
    .line 2040
    .line 2041
    move-result-wide v0

    .line 2042
    sub-long v0, v5, v0

    .line 2043
    .line 2044
    move-wide/from16 v39, v0

    .line 2045
    .line 2046
    goto :goto_14

    .line 2047
    :cond_1c
    move-object/from16 v21, v0

    .line 2048
    .line 2049
    move-object/from16 v35, v1

    .line 2050
    .line 2051
    move-wide/from16 v39, v8

    .line 2052
    .line 2053
    :goto_14
    invoke-static {}, Lcom/sgscq/vpn/g2;->b()Lcom/sgscq/vpn/config/i;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v0

    .line 2057
    if-eqz v0, :cond_1d

    .line 2058
    .line 2059
    new-instance v1, Lcom/sgscq/vpn/config/k;

    .line 2060
    .line 2061
    invoke-direct {v1, v0}, Lcom/sgscq/vpn/config/k;-><init>(Lcom/sgscq/vpn/config/i;)V

    .line 2062
    .line 2063
    .line 2064
    move-object/from16 v37, v1

    .line 2065
    .line 2066
    move-wide/from16 v41, v5

    .line 2067
    .line 2068
    invoke-virtual/range {v37 .. v42}, Lcom/sgscq/vpn/config/k;->e(IJJ)I

    .line 2069
    .line 2070
    .line 2071
    move-result v0

    .line 2072
    move v8, v13

    .line 2073
    goto :goto_15

    .line 2074
    :cond_1d
    sub-long v0, v5, v39

    .line 2075
    .line 2076
    const-wide/32 v8, 0x36ee80

    .line 2077
    .line 2078
    .line 2079
    cmp-long v0, v0, v8

    .line 2080
    .line 2081
    if-gez v0, :cond_1e

    .line 2082
    .line 2083
    mul-int/lit8 v38, v38, 0x50

    .line 2084
    .line 2085
    div-int/lit8 v38, v38, 0x64

    .line 2086
    .line 2087
    :cond_1e
    move v8, v13

    .line 2088
    goto :goto_16

    .line 2089
    :cond_1f
    move-object/from16 v21, v0

    .line 2090
    .line 2091
    move-object/from16 v35, v1

    .line 2092
    .line 2093
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 2094
    .line 2095
    .line 2096
    move-result v0

    .line 2097
    if-nez v0, :cond_22

    .line 2098
    .line 2099
    const-string v0, "purchased_fate_skill_goods"

    .line 2100
    .line 2101
    invoke-static {v0, v15, v14}, Lcom/sgscq/vpn/handler/x0;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    .line 2102
    .line 2103
    .line 2104
    move-result v8

    .line 2105
    invoke-static {}, Lcom/sgscq/vpn/g2;->b()Lcom/sgscq/vpn/config/i;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v0

    .line 2109
    const/16 v1, 0x752e

    .line 2110
    .line 2111
    if-nez v0, :cond_20

    .line 2112
    .line 2113
    const/4 v0, 0x0

    .line 2114
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 2115
    .line 2116
    .line 2117
    move-result v0

    .line 2118
    mul-int/lit8 v0, v0, 0x50

    .line 2119
    .line 2120
    div-int/lit8 v0, v0, 0x64

    .line 2121
    .line 2122
    :goto_15
    move/from16 v38, v0

    .line 2123
    .line 2124
    :goto_16
    move/from16 v0, v18

    .line 2125
    .line 2126
    goto :goto_17

    .line 2127
    :cond_20
    new-instance v9, Lcom/sgscq/vpn/config/k;

    .line 2128
    .line 2129
    invoke-direct {v9, v0}, Lcom/sgscq/vpn/config/k;-><init>(Lcom/sgscq/vpn/config/i;)V

    .line 2130
    .line 2131
    .line 2132
    move/from16 v0, v18

    .line 2133
    .line 2134
    invoke-virtual {v9, v0, v1, v5, v6}, Lcom/sgscq/vpn/config/k;->a(IIJ)I

    .line 2135
    .line 2136
    .line 2137
    move-result v38

    .line 2138
    :goto_17
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v1

    .line 2142
    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    const/4 v1, 0x1

    .line 2146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v9

    .line 2150
    invoke-interface {v12, v11, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v9

    .line 2154
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v9

    .line 2158
    invoke-static {v9, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2159
    .line 2160
    .line 2161
    move-result v1

    .line 2162
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v9

    .line 2166
    move-object/from16 v13, v27

    .line 2167
    .line 2168
    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    .line 2170
    .line 2171
    if-lt v8, v1, :cond_21

    .line 2172
    .line 2173
    const/4 v1, 0x0

    .line 2174
    goto :goto_18

    .line 2175
    :cond_21
    const/4 v1, 0x1

    .line 2176
    :goto_18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v1

    .line 2180
    move-object/from16 v8, v25

    .line 2181
    .line 2182
    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    .line 2184
    .line 2185
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v1

    .line 2189
    move-object/from16 v9, v35

    .line 2190
    .line 2191
    invoke-interface {v12, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    .line 2193
    .line 2194
    move-object/from16 v1, v17

    .line 2195
    .line 2196
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    .line 2198
    .line 2199
    move/from16 v18, v0

    .line 2200
    .line 2201
    move-object v1, v9

    .line 2202
    move-object/from16 v27, v13

    .line 2203
    .line 2204
    move-object/from16 v8, v19

    .line 2205
    .line 2206
    move-object/from16 v0, v21

    .line 2207
    .line 2208
    move-object/from16 v15, v51

    .line 2209
    .line 2210
    move-object/from16 v9, p0

    .line 2211
    .line 2212
    goto/16 :goto_13

    .line 2213
    .line 2214
    :cond_22
    move-object/from16 v9, p0

    .line 2215
    .line 2216
    move-object/from16 v8, v19

    .line 2217
    .line 2218
    move-object/from16 v0, v21

    .line 2219
    .line 2220
    move-object/from16 v1, v35

    .line 2221
    .line 2222
    move-object/from16 v15, v51

    .line 2223
    .line 2224
    goto/16 :goto_13

    .line 2225
    .line 2226
    :cond_23
    move-object v9, v1

    .line 2227
    goto/16 :goto_f

    .line 2228
    .line 2229
    :goto_19
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 2230
    .line 2231
    if-eqz v0, :cond_24

    .line 2232
    .line 2233
    move-object/from16 v17, v4

    .line 2234
    .line 2235
    move-object/from16 v25, v10

    .line 2236
    .line 2237
    move-object v4, v14

    .line 2238
    goto/16 :goto_1f

    .line 2239
    .line 2240
    :cond_24
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 2241
    .line 2242
    .line 2243
    move-result-wide v5

    .line 2244
    move-object/from16 v7, p0

    .line 2245
    .line 2246
    iget-object v0, v7, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2247
    .line 2248
    if-nez v0, :cond_25

    .line 2249
    .line 2250
    move-object/from16 v0, v20

    .line 2251
    .line 2252
    goto :goto_1a

    .line 2253
    :cond_25
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 2254
    .line 2255
    :goto_1a
    invoke-static {v0, v5, v6}, Lcom/sgscq/vpn/l2;->a(Landroid/content/Context;J)Lcom/sgscq/vpn/j2;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v0

    .line 2259
    new-instance v12, Ljava/util/ArrayList;

    .line 2260
    .line 2261
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2262
    .line 2263
    .line 2264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2265
    .line 2266
    .line 2267
    new-instance v15, Ljava/util/ArrayList;

    .line 2268
    .line 2269
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2270
    .line 2271
    .line 2272
    move-object/from16 v17, v4

    .line 2273
    .line 2274
    iget-object v4, v0, Lcom/sgscq/vpn/j2;->d:Ljava/util/List;

    .line 2275
    .line 2276
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v4

    .line 2280
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2281
    .line 2282
    .line 2283
    move-result v18

    .line 2284
    if-eqz v18, :cond_27

    .line 2285
    .line 2286
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v18

    .line 2290
    move-object/from16 v19, v4

    .line 2291
    .line 2292
    move-object/from16 v4, v18

    .line 2293
    .line 2294
    check-cast v4, Lcom/sgscq/vpn/k2;

    .line 2295
    .line 2296
    move-object/from16 v25, v10

    .line 2297
    .line 2298
    iget-object v10, v4, Lcom/sgscq/vpn/k2;->a:Lcom/sgscq/vpn/config/l;

    .line 2299
    .line 2300
    iget v10, v10, Lcom/sgscq/vpn/config/l;->k:I

    .line 2301
    .line 2302
    move/from16 v7, v24

    .line 2303
    .line 2304
    if-lt v7, v10, :cond_26

    .line 2305
    .line 2306
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    .line 2308
    .line 2309
    :cond_26
    move/from16 v24, v7

    .line 2310
    .line 2311
    move-object/from16 v4, v19

    .line 2312
    .line 2313
    move-object/from16 v10, v25

    .line 2314
    .line 2315
    move-object/from16 v7, p0

    .line 2316
    .line 2317
    goto :goto_1b

    .line 2318
    :cond_27
    move-object/from16 v25, v10

    .line 2319
    .line 2320
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v4

    .line 2324
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2325
    .line 2326
    .line 2327
    move-result v7

    .line 2328
    if-eqz v7, :cond_2a

    .line 2329
    .line 2330
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v7

    .line 2334
    check-cast v7, Lcom/sgscq/vpn/k2;

    .line 2335
    .line 2336
    iget-object v10, v0, Lcom/sgscq/vpn/j2;->e:Lcom/sgscq/vpn/config/i;

    .line 2337
    .line 2338
    invoke-virtual {v7, v10, v5, v6}, Lcom/sgscq/vpn/k2;->a(Lcom/sgscq/vpn/config/i;J)Lcom/sgscq/vpn/config/l;

    .line 2339
    .line 2340
    .line 2341
    move-result-object v10

    .line 2342
    iget-object v15, v10, Lcom/sgscq/vpn/config/l;->n:Ljava/lang/String;

    .line 2343
    .line 2344
    move-object/from16 v27, v0

    .line 2345
    .line 2346
    const-string v0, "purchased_limited_shop_goods"

    .line 2347
    .line 2348
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v0

    .line 2352
    move-object/from16 v35, v4

    .line 2353
    .line 2354
    instance-of v4, v0, Ljava/util/Map;

    .line 2355
    .line 2356
    if-nez v4, :cond_28

    .line 2357
    .line 2358
    const/4 v0, 0x0

    .line 2359
    goto :goto_1d

    .line 2360
    :cond_28
    check-cast v0, Ljava/util/Map;

    .line 2361
    .line 2362
    const/4 v4, 0x0

    .line 2363
    invoke-static {v0, v15, v4}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 2364
    .line 2365
    .line 2366
    move-result v0

    .line 2367
    :goto_1d
    move-object v4, v14

    .line 2368
    iget-wide v14, v10, Lcom/sgscq/vpn/config/l;->m:J

    .line 2369
    .line 2370
    sub-long/2addr v14, v5

    .line 2371
    const-wide/16 v18, 0x3e7

    .line 2372
    .line 2373
    add-long v14, v14, v18

    .line 2374
    .line 2375
    const-wide/16 v18, 0x3e8

    .line 2376
    .line 2377
    div-long v14, v14, v18

    .line 2378
    .line 2379
    move-wide/from16 v37, v5

    .line 2380
    .line 2381
    const-wide/32 v5, 0x7fffffff

    .line 2382
    .line 2383
    .line 2384
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 2385
    .line 2386
    .line 2387
    move-result-wide v5

    .line 2388
    const-wide/16 v14, 0x1

    .line 2389
    .line 2390
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 2391
    .line 2392
    .line 2393
    move-result-wide v5

    .line 2394
    long-to-int v5, v5

    .line 2395
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 2396
    .line 2397
    iget-object v7, v7, Lcom/sgscq/vpn/k2;->b:Ljava/util/Map;

    .line 2398
    .line 2399
    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 2400
    .line 2401
    .line 2402
    iget-object v7, v10, Lcom/sgscq/vpn/config/l;->a:Ljava/lang/String;

    .line 2403
    .line 2404
    move-object/from16 v14, v36

    .line 2405
    .line 2406
    invoke-interface {v6, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    .line 2408
    .line 2409
    const-string v15, "limited_product_key"

    .line 2410
    .line 2411
    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    .line 2413
    .line 2414
    const-string v7, "limited_purchase_key"

    .line 2415
    .line 2416
    iget-object v15, v10, Lcom/sgscq/vpn/config/l;->n:Ljava/lang/String;

    .line 2417
    .line 2418
    invoke-interface {v6, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    .line 2420
    .line 2421
    iget v7, v10, Lcom/sgscq/vpn/config/l;->b:I

    .line 2422
    .line 2423
    invoke-static {v7}, Lc/a;->E(I)Ljava/lang/String;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v7

    .line 2427
    const-string v15, "limited_product_type"

    .line 2428
    .line 2429
    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    .line 2431
    .line 2432
    const-string v7, "general_id"

    .line 2433
    .line 2434
    iget-object v15, v10, Lcom/sgscq/vpn/config/l;->c:Ljava/lang/String;

    .line 2435
    .line 2436
    invoke-interface {v6, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    .line 2438
    .line 2439
    const-string v7, "reward_id"

    .line 2440
    .line 2441
    iget-object v15, v10, Lcom/sgscq/vpn/config/l;->f:Ljava/lang/String;

    .line 2442
    .line 2443
    invoke-interface {v6, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    .line 2445
    .line 2446
    iget v7, v10, Lcom/sgscq/vpn/config/l;->g:I

    .line 2447
    .line 2448
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v7

    .line 2452
    const-string v15, "reward_count"

    .line 2453
    .line 2454
    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    .line 2456
    .line 2457
    iget v7, v10, Lcom/sgscq/vpn/config/l;->h:I

    .line 2458
    .line 2459
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2460
    .line 2461
    .line 2462
    move-result-object v7

    .line 2463
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    .line 2465
    .line 2466
    iget v7, v10, Lcom/sgscq/vpn/config/l;->i:I

    .line 2467
    .line 2468
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2469
    .line 2470
    .line 2471
    move-result-object v7

    .line 2472
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    .line 2474
    .line 2475
    const/4 v7, 0x1

    .line 2476
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v7

    .line 2480
    const-string v15, "currency_type"

    .line 2481
    .line 2482
    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    .line 2484
    .line 2485
    iget v7, v10, Lcom/sgscq/vpn/config/l;->j:I

    .line 2486
    .line 2487
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v15

    .line 2491
    invoke-interface {v6, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    .line 2493
    .line 2494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2495
    .line 2496
    .line 2497
    move-result-object v15

    .line 2498
    invoke-interface {v6, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    .line 2500
    .line 2501
    if-lt v0, v7, :cond_29

    .line 2502
    .line 2503
    const/4 v0, 0x0

    .line 2504
    goto :goto_1e

    .line 2505
    :cond_29
    const/4 v0, 0x1

    .line 2506
    :goto_1e
    move/from16 v18, v0

    .line 2507
    .line 2508
    const-string v22, "open_time"

    .line 2509
    .line 2510
    const/4 v0, 0x0

    .line 2511
    move-object/from16 v19, v6

    .line 2512
    .line 2513
    move-object/from16 v20, v8

    .line 2514
    .line 2515
    move/from16 v21, v0

    .line 2516
    .line 2517
    move/from16 v23, v5

    .line 2518
    .line 2519
    move-object/from16 v24, v9

    .line 2520
    .line 2521
    invoke-static/range {v18 .. v24}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 2522
    .line 2523
    .line 2524
    iget v5, v10, Lcom/sgscq/vpn/config/l;->k:I

    .line 2525
    .line 2526
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v5

    .line 2530
    move-object/from16 v7, v16

    .line 2531
    .line 2532
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    .line 2534
    .line 2535
    const-string v5, "tag_id"

    .line 2536
    .line 2537
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v0

    .line 2541
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    .line 2543
    .line 2544
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2545
    .line 2546
    move-object/from16 v5, v26

    .line 2547
    .line 2548
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2549
    .line 2550
    .line 2551
    const-string v0, "is_notice"

    .line 2552
    .line 2553
    const-string v10, "0"

    .line 2554
    .line 2555
    invoke-interface {v6, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2556
    .line 2557
    .line 2558
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2559
    .line 2560
    .line 2561
    move-object/from16 v36, v14

    .line 2562
    .line 2563
    move-object/from16 v0, v27

    .line 2564
    .line 2565
    move-wide/from16 v5, v37

    .line 2566
    .line 2567
    move-object v14, v4

    .line 2568
    move-object/from16 v4, v35

    .line 2569
    .line 2570
    goto/16 :goto_1c

    .line 2571
    .line 2572
    :cond_2a
    move-object v4, v14

    .line 2573
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2574
    .line 2575
    .line 2576
    :goto_1f
    move-object/from16 v2, p0

    .line 2577
    .line 2578
    iget-object v0, v2, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2579
    .line 2580
    if-eqz v0, :cond_2b

    .line 2581
    .line 2582
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 2583
    .line 2584
    if-eqz v0, :cond_2b

    .line 2585
    .line 2586
    const-string v3, "gift_box_contents.json"

    .line 2587
    .line 2588
    invoke-static {v0, v3}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 2589
    .line 2590
    .line 2591
    move-result-object v0

    .line 2592
    goto :goto_20

    .line 2593
    :cond_2b
    move-object/from16 v0, v25

    .line 2594
    .line 2595
    :goto_20
    if-eqz v0, :cond_2c

    .line 2596
    .line 2597
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2598
    .line 2599
    .line 2600
    move-result v3

    .line 2601
    if-nez v3, :cond_2c

    .line 2602
    .line 2603
    goto :goto_21

    .line 2604
    :cond_2c
    const-string v3, "docs/game_data_json/gift_box_contents.json"

    .line 2605
    .line 2606
    invoke-static {v3}, Lcom/sgscq/vpn/handler/x0;->c0(Ljava/lang/String;)Ljava/io/File;

    .line 2607
    .line 2608
    .line 2609
    move-result-object v3

    .line 2610
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 2611
    .line 2612
    .line 2613
    move-result v5

    .line 2614
    if-nez v5, :cond_2d

    .line 2615
    .line 2616
    goto :goto_21

    .line 2617
    :cond_2d
    :try_start_1
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->W0(Ljava/io/File;)Ljava/lang/String;

    .line 2618
    .line 2619
    .line 2620
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2621
    :catch_1
    :goto_21
    if-eqz v0, :cond_34

    .line 2622
    .line 2623
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2624
    .line 2625
    .line 2626
    move-result v3

    .line 2627
    if-eqz v3, :cond_2e

    .line 2628
    .line 2629
    goto/16 :goto_24

    .line 2630
    .line 2631
    :cond_2e
    :try_start_2
    new-instance v3, Lcom/sgscq/vpn/handler/ShopHandler$2;

    .line 2632
    .line 2633
    invoke-direct {v3}, Lcom/sgscq/vpn/handler/ShopHandler$2;-><init>()V

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v3

    .line 2640
    new-instance v5, La/o;

    .line 2641
    .line 2642
    invoke-direct {v5}, La/o;-><init>()V

    .line 2643
    .line 2644
    .line 2645
    invoke-virtual {v5, v0, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v3

    .line 2649
    check-cast v3, Ljava/util/Map;

    .line 2650
    .line 2651
    if-eqz v3, :cond_2f

    .line 2652
    .line 2653
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 2654
    .line 2655
    .line 2656
    move-result v5

    .line 2657
    if-eqz v5, :cond_30

    .line 2658
    .line 2659
    :cond_2f
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2660
    .line 2661
    .line 2662
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2663
    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2664
    .line 2665
    .line 2666
    move-result-object v0

    .line 2667
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2668
    .line 2669
    .line 2670
    move-result v5

    .line 2671
    if-eqz v5, :cond_34

    .line 2672
    .line 2673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2674
    .line 2675
    .line 2676
    move-result-object v5

    .line 2677
    check-cast v5, Ljava/util/Map;

    .line 2678
    .line 2679
    const-string v6, "item_id"

    .line 2680
    .line 2681
    move-object/from16 v7, v25

    .line 2682
    .line 2683
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2684
    .line 2685
    .line 2686
    move-result-object v6

    .line 2687
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v6

    .line 2691
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    .line 2693
    .line 2694
    move-result-object v6

    .line 2695
    instance-of v8, v6, Ljava/util/Map;

    .line 2696
    .line 2697
    if-eqz v8, :cond_33

    .line 2698
    .line 2699
    check-cast v6, Ljava/util/Map;

    .line 2700
    .line 2701
    move-object/from16 v8, v49

    .line 2702
    .line 2703
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    .line 2705
    .line 2706
    move-result-object v9

    .line 2707
    instance-of v10, v9, Ljava/util/List;

    .line 2708
    .line 2709
    if-eqz v10, :cond_31

    .line 2710
    .line 2711
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    .line 2713
    .line 2714
    :cond_31
    const-string v9, "desc"

    .line 2715
    .line 2716
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    .line 2718
    .line 2719
    move-result-object v6

    .line 2720
    move-object/from16 v9, v17

    .line 2721
    .line 2722
    invoke-interface {v5, v9, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2723
    .line 2724
    .line 2725
    move-result-object v10

    .line 2726
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v10

    .line 2730
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 2731
    .line 2732
    .line 2733
    move-result v10

    .line 2734
    if-eqz v10, :cond_32

    .line 2735
    .line 2736
    if-eqz v6, :cond_32

    .line 2737
    .line 2738
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2739
    .line 2740
    .line 2741
    move-result-object v10

    .line 2742
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 2743
    .line 2744
    .line 2745
    move-result v10

    .line 2746
    if-nez v10, :cond_32

    .line 2747
    .line 2748
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2749
    .line 2750
    .line 2751
    move-result-object v6

    .line 2752
    move-object/from16 v10, v51

    .line 2753
    .line 2754
    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    .line 2756
    .line 2757
    goto :goto_23

    .line 2758
    :cond_32
    move-object/from16 v10, v51

    .line 2759
    .line 2760
    :goto_23
    move-object/from16 v25, v7

    .line 2761
    .line 2762
    move-object/from16 v49, v8

    .line 2763
    .line 2764
    move-object/from16 v17, v9

    .line 2765
    .line 2766
    move-object/from16 v51, v10

    .line 2767
    .line 2768
    goto :goto_22

    .line 2769
    :cond_33
    move-object/from16 v25, v7

    .line 2770
    .line 2771
    goto :goto_22

    .line 2772
    :catch_2
    :cond_34
    :goto_24
    move-object/from16 v7, v25

    .line 2773
    .line 2774
    :goto_25
    const/4 v0, 0x0

    .line 2775
    move-object/from16 v17, v1

    .line 2776
    .line 2777
    move v1, v0

    .line 2778
    :goto_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2779
    .line 2780
    .line 2781
    move-result-object v0

    .line 2782
    move-object/from16 v3, v32

    .line 2783
    .line 2784
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    .line 2786
    .line 2787
    move-result-object v0

    .line 2788
    move-object/from16 v3, v52

    .line 2789
    .line 2790
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v0

    .line 2794
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v0

    .line 2798
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 2799
    .line 2800
    .line 2801
    move-result v0

    .line 2802
    move-object/from16 v1, v33

    .line 2803
    .line 2804
    invoke-interface {v4, v1, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    .line 2806
    .line 2807
    move-result-object v1

    .line 2808
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2809
    .line 2810
    .line 2811
    move-result-object v1

    .line 2812
    move-object/from16 v5, v28

    .line 2813
    .line 2814
    move-object/from16 v3, v31

    .line 2815
    .line 2816
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2817
    .line 2818
    .line 2819
    move-result v3

    .line 2820
    if-eqz v3, :cond_36

    .line 2821
    .line 2822
    if-eqz v30, :cond_36

    .line 2823
    .line 2824
    move/from16 v3, v34

    .line 2825
    .line 2826
    if-ne v0, v3, :cond_35

    .line 2827
    .line 2828
    move-object/from16 v0, v29

    .line 2829
    .line 2830
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2831
    .line 2832
    .line 2833
    move-result v0

    .line 2834
    if-nez v0, :cond_36

    .line 2835
    .line 2836
    :cond_35
    iget-object v0, v2, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2837
    .line 2838
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2839
    .line 2840
    move-object/from16 v1, p1

    .line 2841
    .line 2842
    invoke-virtual {v0, v1, v4}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2843
    .line 2844
    .line 2845
    :cond_36
    iget-object v0, v2, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2846
    .line 2847
    const/4 v1, 0x0

    .line 2848
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2849
    .line 2850
    .line 2851
    move-result-object v3

    .line 2852
    const-string v8, "code"

    .line 2853
    .line 2854
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v9

    .line 2858
    const-string v10, "result"

    .line 2859
    .line 2860
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2861
    .line 2862
    const-string v12, "msg"

    .line 2863
    .line 2864
    const-string v13, "success"

    .line 2865
    .line 2866
    const-string v14, "error_code"

    .line 2867
    .line 2868
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2869
    .line 2870
    .line 2871
    move-result-object v15

    .line 2872
    const-string v16, "item_list"

    .line 2873
    .line 2874
    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    .line 2875
    .line 2876
    .line 2877
    move-result-object v1

    .line 2878
    const-string v4, "ret"

    .line 2879
    .line 2880
    invoke-static {v4, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2881
    .line 2882
    .line 2883
    move-result-object v1

    .line 2884
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2885
    .line 2886
    .line 2887
    move-result-object v1

    .line 2888
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2889
    .line 2890
    .line 2891
    move-result-object v0

    .line 2892
    return-object v0

    .line 2893
    :cond_37
    :goto_27
    move-object v2, v9

    .line 2894
    iget-object v1, v2, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2895
    .line 2896
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x0;->x(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2897
    .line 2898
    .line 2899
    move-result-object v0

    .line 2900
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2901
    .line 2902
    .line 2903
    move-result-object v0

    .line 2904
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2905
    .line 2906
    .line 2907
    move-result-object v0

    .line 2908
    return-object v0
.end method

.method public final k(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9

    .line 1
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sgscq/vpn/handler/x0;->l(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method public final k0(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "product.createOrder"

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_7

    .line 14
    .line 15
    const-string v3, "pay.createTrade"

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    const-string v3, "product.notify"

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_5

    .line 31
    .line 32
    const-string v3, "product.checkOrder"

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_5

    .line 39
    .line 40
    const-string v3, "pay.checkOrder"

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_5

    .line 47
    .line 48
    const-string v3, "pay.notify"

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    const-string v3, "payIos.iosCharge"

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-object v1, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v3, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 70
    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v3, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 95
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->a()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/x0;->w(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    return-object v1

    .line 112
    :cond_5
    :goto_2
    sget-boolean v3, Lcom/sgscq/vpn/c7;->i:Z

    .line 113
    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->M0()[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    return-object v1

    .line 121
    :cond_6
    invoke-virtual/range {p0 .. p2}, Lcom/sgscq/vpn/handler/x0;->m0(Ljava/lang/String;Ljava/util/Map;)[B

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    return-object v1

    .line 126
    :cond_7
    :goto_3
    sget-boolean v1, Lcom/sgscq/vpn/c7;->i:Z

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->M0()[B

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    return-object v1

    .line 135
    :cond_8
    const-string v1, "product_id"

    .line 136
    .line 137
    const-string v3, "pk_id"

    .line 138
    .line 139
    const-string v4, "id"

    .line 140
    .line 141
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->a()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    const-string v7, "charge_6480"

    .line 154
    .line 155
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    const/4 v7, 0x1

    .line 160
    const/4 v8, 0x0

    .line 161
    if-eqz v5, :cond_a

    .line 162
    .line 163
    const/4 v5, 0x3

    .line 164
    if-lt v6, v5, :cond_9

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_9
    move v5, v8

    .line 168
    goto :goto_5

    .line 169
    :cond_a
    :goto_4
    move v5, v7

    .line 170
    :goto_5
    if-nez v5, :cond_b

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->p0()[B

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    goto/16 :goto_9

    .line 177
    .line 178
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v5

    .line 182
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v2, v3}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_c

    .line 195
    .line 196
    const-string v3, "product_coin_2"

    .line 197
    .line 198
    :cond_c
    move-object v12, v3

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v4, "local_order_"

    .line 202
    .line 203
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-static {v12}, Lcom/sgscq/vpn/handler/x0;->I0(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    const-string v5, "user_id"

    .line 218
    .line 219
    const-string v6, "account_uid"

    .line 220
    .line 221
    const-string v9, "uid"

    .line 222
    .line 223
    filled-new-array {v9, v5, v6}, [Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    const-string v9, "user_id"

    .line 232
    .line 233
    const-string v11, "product_id"

    .line 234
    .line 235
    const-string v13, "product_price"

    .line 236
    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    const-string v15, "price"

    .line 242
    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v16

    .line 247
    const-string v17, "ext"

    .line 248
    .line 249
    const-string v4, "bf_orderId"

    .line 250
    .line 251
    filled-new-array {v1, v12}, [Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-static {v4, v3, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v18

    .line 263
    filled-new-array/range {v9 .. v18}, [Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    const-string v5, "order_id"

    .line 268
    .line 269
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 270
    .line 271
    .line 272
    move-result-object v22

    .line 273
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    const-string v13, "code"

    .line 278
    .line 279
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    const-string v15, "result"

    .line 284
    .line 285
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 286
    .line 287
    const-string v17, "msg"

    .line 288
    .line 289
    const-string v18, "success"

    .line 290
    .line 291
    const-string v19, "error_code"

    .line 292
    .line 293
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v20

    .line 297
    const-string v21, "return_info"

    .line 298
    .line 299
    const-string v23, "order_id"

    .line 300
    .line 301
    const-string v25, "orderId"

    .line 302
    .line 303
    move-object/from16 v24, v3

    .line 304
    .line 305
    move-object/from16 v26, v3

    .line 306
    .line 307
    filled-new-array/range {v13 .. v26}, [Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const-string v6, "ret"

    .line 312
    .line 313
    invoke-static {v6, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    iget-object v4, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 318
    .line 319
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v15

    .line 323
    if-eqz v15, :cond_13

    .line 324
    .line 325
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    if-nez v9, :cond_13

    .line 330
    .line 331
    iget-object v9, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 332
    .line 333
    invoke-virtual {v9, v15}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    if-eqz v14, :cond_13

    .line 338
    .line 339
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v13

    .line 347
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 348
    .line 349
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 350
    .line 351
    .line 352
    if-eqz v2, :cond_d

    .line 353
    .line 354
    invoke-interface {v9, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 355
    .line 356
    .line 357
    :cond_d
    const-string v2, ""

    .line 358
    .line 359
    invoke-virtual {v3, v5, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    const-string v5, "return_info"

    .line 371
    .line 372
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    instance-of v10, v5, Ljava/util/Map;

    .line 377
    .line 378
    if-eqz v10, :cond_e

    .line 379
    .line 380
    check-cast v5, Ljava/util/Map;

    .line 381
    .line 382
    const-string v10, "product_price"

    .line 383
    .line 384
    invoke-interface {v5, v10, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v10

    .line 392
    const-string v11, "price"

    .line 393
    .line 394
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v9, v1, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    invoke-interface {v5, v1, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    invoke-interface {v9, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    :cond_e
    invoke-static {v13, v14, v9}, Lcom/sgscq/vpn/handler/x0;->Q0(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    new-instance v5, Lcom/sgscq/vpn/h;

    .line 417
    .line 418
    iget-object v10, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 419
    .line 420
    invoke-direct {v5, v8, v10}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    iget-boolean v10, v5, Lcom/sgscq/vpn/f;->c:Z

    .line 428
    .line 429
    if-eqz v10, :cond_f

    .line 430
    .line 431
    iget v5, v5, Lcom/sgscq/vpn/f;->f:I

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_f
    move v5, v8

    .line 435
    :goto_6
    new-instance v10, Lcom/sgscq/vpn/b0;

    .line 436
    .line 437
    iget-object v11, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 438
    .line 439
    invoke-direct {v10, v11}, Lcom/sgscq/vpn/b0;-><init>(Landroid/content/Context;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v10}, Lcom/sgscq/vpn/b0;->a()I

    .line 443
    .line 444
    .line 445
    move-result v10

    .line 446
    new-instance v11, Lcom/sgscq/vpn/h;

    .line 447
    .line 448
    iget-object v12, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 449
    .line 450
    invoke-direct {v11, v7, v12}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11}, Lcom/sgscq/vpn/h;->a()I

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    invoke-static {v5, v10, v7}, Lcom/sgscq/vpn/handler/x0;->O(III)I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    const-string v10, "daily_recharge_day"

    .line 466
    .line 467
    invoke-static {v14, v10, v2, v7}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-eqz v2, :cond_10

    .line 472
    .line 473
    const-string v2, "daily_recharge_rmb_used"

    .line 474
    .line 475
    invoke-virtual {v4, v8, v2, v14}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    goto :goto_7

    .line 480
    :cond_10
    move v2, v8

    .line 481
    :goto_7
    invoke-static {v13, v14}, Lcom/sgscq/vpn/handler/x0;->o0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-nez v10, :cond_11

    .line 486
    .line 487
    add-int v10, v2, v1

    .line 488
    .line 489
    if-le v10, v5, :cond_11

    .line 490
    .line 491
    sub-int v3, v5, v2

    .line 492
    .line 493
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    invoke-static {v1, v3}, Lcom/sgscq/vpn/handler/x0;->y(II)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iget-object v3, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 502
    .line 503
    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/x0;->z(II)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-static {v3, v2}, Lcom/sgscq/vpn/p5;->l1(Landroid/content/Context;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/handler/x0;->L0(Ljava/lang/String;)[B

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    goto/16 :goto_9

    .line 515
    .line 516
    :cond_11
    invoke-static {v13, v14}, Lcom/sgscq/vpn/handler/x0;->o0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 517
    .line 518
    .line 519
    move-result v10

    .line 520
    if-eqz v10, :cond_12

    .line 521
    .line 522
    const-string v2, "current_charge_gold"

    .line 523
    .line 524
    invoke-static {v14, v9, v13, v1}, Lcom/sgscq/vpn/handler/x0;->P0(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)I

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    invoke-static {v5, v2, v14}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    move-object/from16 p1, v6

    .line 533
    .line 534
    move v9, v8

    .line 535
    move-object v0, v13

    .line 536
    move-object v8, v14

    .line 537
    move-object/from16 v17, v15

    .line 538
    .line 539
    goto :goto_8

    .line 540
    :cond_12
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 541
    .line 542
    .line 543
    move-result-wide v10

    .line 544
    invoke-static {v14, v9, v10, v11, v7}, Lcom/sgscq/vpn/handler/x0;->H0(Ljava/util/Map;Ljava/util/Map;JLjava/lang/String;)Lcom/sgscq/vpn/q4;

    .line 545
    .line 546
    .line 547
    move-result-object v7

    .line 548
    iget-object v9, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 549
    .line 550
    iget-object v12, v7, Lcom/sgscq/vpn/q4;->b:Ljava/lang/String;

    .line 551
    .line 552
    const-string v8, "recharge_grant"

    .line 553
    .line 554
    iget-object v11, v7, Lcom/sgscq/vpn/q4;->d:Ljava/util/Map;

    .line 555
    .line 556
    move-object/from16 p1, v6

    .line 557
    .line 558
    iget-wide v6, v7, Lcom/sgscq/vpn/q4;->e:J

    .line 559
    .line 560
    move-object v10, v15

    .line 561
    move-object/from16 v16, v11

    .line 562
    .line 563
    move-object v11, v14

    .line 564
    move-object v0, v13

    .line 565
    move-object v13, v8

    .line 566
    move-object v8, v14

    .line 567
    move-object/from16 v14, v16

    .line 568
    .line 569
    move-object/from16 v17, v15

    .line 570
    .line 571
    move-wide v15, v6

    .line 572
    invoke-virtual/range {v9 .. v16}, Lcom/sgscq/vpn/h5;->P(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Ljava/util/LinkedHashMap;

    .line 573
    .line 574
    .line 575
    move-result-object v6

    .line 576
    const-string v7, "gold"

    .line 577
    .line 578
    const/4 v9, 0x0

    .line 579
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 580
    .line 581
    .line 582
    move-result-object v10

    .line 583
    invoke-interface {v6, v7, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    check-cast v6, Ljava/lang/Number;

    .line 588
    .line 589
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    iget-object v7, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 594
    .line 595
    add-int/2addr v2, v1

    .line 596
    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/x0;->z(II)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-static {v7, v2}, Lcom/sgscq/vpn/p5;->l1(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    move v2, v6

    .line 604
    :goto_8
    const-string v5, "totalRecharge"

    .line 605
    .line 606
    invoke-virtual {v4, v9, v5, v8}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    invoke-static {v5}, Lcom/sgscq/vpn/handler/x0;->J(I)I

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    iget-object v6, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 615
    .line 616
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    invoke-static {v8}, Lcom/sgscq/vpn/h5;->k0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    invoke-static {v6}, Lcom/sgscq/vpn/h5;->w(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 624
    .line 625
    .line 626
    move-result-object v6

    .line 627
    invoke-static {v6}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 632
    .line 633
    .line 634
    move-result-wide v9

    .line 635
    long-to-int v10, v9

    .line 636
    new-instance v7, Lorg/json/JSONObject;

    .line 637
    .line 638
    iget-object v9, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 639
    .line 640
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 641
    .line 642
    .line 643
    move-result v11

    .line 644
    int-to-long v11, v11

    .line 645
    invoke-virtual {v4, v11, v12, v8}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 646
    .line 647
    .line 648
    move-result-wide v14

    .line 649
    const-string v11, "user_gold"

    .line 650
    .line 651
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 652
    .line 653
    .line 654
    move-result v12

    .line 655
    invoke-virtual {v4, v12, v11, v8}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 656
    .line 657
    .line 658
    move-result v11

    .line 659
    const-string v12, "user_energy"

    .line 660
    .line 661
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 662
    .line 663
    .line 664
    move-result v13

    .line 665
    invoke-virtual {v4, v13, v12, v8}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 666
    .line 667
    .line 668
    move-result v12

    .line 669
    const-string v13, "user_power"

    .line 670
    .line 671
    move-object/from16 v18, v0

    .line 672
    .line 673
    invoke-virtual {v4}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    invoke-virtual {v4, v0, v13, v8}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 678
    .line 679
    .line 680
    move-result v13

    .line 681
    move-object/from16 v16, v17

    .line 682
    .line 683
    move-object/from16 v17, v8

    .line 684
    .line 685
    invoke-virtual/range {v9 .. v17}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 690
    .line 691
    .line 692
    iget-object v0, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 693
    .line 694
    const/4 v9, 0x0

    .line 695
    new-array v9, v9, [Ljava/lang/String;

    .line 696
    .line 697
    invoke-virtual {v0, v8, v7, v9}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    const-string v7, "status"

    .line 702
    .line 703
    const/4 v8, 0x1

    .line 704
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 705
    .line 706
    .line 707
    move-result-object v9

    .line 708
    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    const-string v7, "pay_status"

    .line 712
    .line 713
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 714
    .line 715
    .line 716
    move-result-object v8

    .line 717
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    const-string v7, "vip_level"

    .line 721
    .line 722
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 723
    .line 724
    .line 725
    move-result-object v8

    .line 726
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    const-string v7, "user_vip_level"

    .line 730
    .line 731
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    invoke-static {v6}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 739
    .line 740
    .line 741
    move-result-object v5

    .line 742
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    const-string v6, "push_info"

    .line 747
    .line 748
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    const-string v5, "cmn"

    .line 752
    .line 753
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    const-string v0, "mail_tip"

    .line 757
    .line 758
    const-string v5, "\u5145\u503c\u5143\u5b9d\u5df2\u53d1\u9001\u5230\u90ae\u4ef6"

    .line 759
    .line 760
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-object/from16 v0, v18

    .line 764
    .line 765
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/x0;->m(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 770
    .line 771
    .line 772
    const/4 v0, -0x1

    .line 773
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    move-object/from16 v1, p1

    .line 778
    .line 779
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    const-string v1, "code"

    .line 783
    .line 784
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    const-string v1, "result"

    .line 788
    .line 789
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 790
    .line 791
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    const-string v1, "error_code"

    .line 795
    .line 796
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    const-string v0, "msg"

    .line 800
    .line 801
    const-string v1, "\u672c\u673a\u76f4\u5145\u5df2\u5b8c\u6210\uff0c\u5956\u52b1\u5df2\u53d1\u9001\u5230\u90ae\u4ef6\uff0c\u8bf7\u5173\u95ed\u63d0\u793a\u540e\u9886\u53d6"

    .line 802
    .line 803
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    const-string v0, "message"

    .line 807
    .line 808
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    const-string v0, "toast"

    .line 812
    .line 813
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    const-string v0, "tips"

    .line 817
    .line 818
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    :cond_13
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    :goto_9
    return-object v1
.end method

.method public final l(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 2

    const-string v0, "pk_id"

    const-string v1, "item_id"

    .line 1
    invoke-static {v0, p2, v1, p3}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "item_price"

    .line 2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "discount_price"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "currency_type"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "purchase_num"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "purchased_num"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-lt p7, p6, :cond_0

    move p5, v0

    :cond_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "is_purchased"

    invoke-virtual {p2, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "open_time"

    invoke-virtual {p2, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "close_time"

    invoke-virtual {p2, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "vip_level"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "tag_id"

    invoke-virtual {p2, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "can_exchange"

    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "is_notice"

    const-string p6, "0"

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "item_title"

    invoke-virtual {p2, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3, p4}, Lcom/sgscq/vpn/handler/x0;->R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "item_desc"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l0(Ljava/util/Map;)[B
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v6, ""

    .line 25
    .line 26
    const-string v7, "1"

    .line 27
    .line 28
    const-string v8, "pk_id"

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    move-object v9, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v9, "item_advanced_id"

    .line 35
    .line 36
    invoke-interface {v1, v9, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Ljava/lang/String;

    .line 41
    .line 42
    const-string v10, "quick_id"

    .line 43
    .line 44
    invoke-interface {v1, v10, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    check-cast v9, Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    check-cast v9, Ljava/lang/String;

    .line 55
    .line 56
    :goto_0
    const-string v10, "item_id"

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    move-object v11, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-interface {v1, v10, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    check-cast v11, Ljava/lang/String;

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_3

    .line 73
    .line 74
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_3

    .line 79
    .line 80
    move-object v9, v7

    .line 81
    :cond_3
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->K0()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-eqz v13, :cond_5

    .line 94
    .line 95
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    check-cast v13, Ljava/util/Map;

    .line 100
    .line 101
    invoke-static {v13, v8, v9}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-nez v14, :cond_6

    .line 106
    .line 107
    invoke-static {v13, v10, v11}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    if-eqz v14, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    const/4 v13, 0x0

    .line 115
    :cond_6
    :goto_2
    if-nez v13, :cond_7

    .line 116
    .line 117
    const-string v1, "\u5546\u54c1\u4e0d\u5b58\u5728"

    .line 118
    .line 119
    move-object/from16 v24, v3

    .line 120
    .line 121
    move-object/from16 v25, v4

    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_7
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    invoke-direct {v8, v13}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 128
    .line 129
    .line 130
    const-string v9, "item_num"

    .line 131
    .line 132
    if-nez v1, :cond_8

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    check-cast v7, Ljava/lang/String;

    .line 140
    .line 141
    :goto_3
    const/4 v11, 0x1

    .line 142
    invoke-static {v7, v11}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    const-string v11, "price"

    .line 151
    .line 152
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    const-string v12, "discount_price"

    .line 161
    .line 162
    invoke-virtual {v8, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const/16 v13, 0xa

    .line 171
    .line 172
    invoke-static {v12, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    invoke-static {v11, v12}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    const-string v12, "effect_value"

    .line 181
    .line 182
    invoke-virtual {v8, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    const/16 v13, 0x32

    .line 191
    .line 192
    invoke-static {v12, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    const/4 v13, 0x0

    .line 197
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    const-string v15, "user_gold"

    .line 202
    .line 203
    invoke-interface {v5, v15, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    invoke-static {v14, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    invoke-virtual {v8, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    move-object/from16 v16, v6

    .line 224
    .line 225
    invoke-static {v5}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    const-string v0, "600030"

    .line 230
    .line 231
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v17

    .line 235
    move-object/from16 v24, v3

    .line 236
    .line 237
    const-string v3, "600035"

    .line 238
    .line 239
    move-object/from16 v25, v4

    .line 240
    .line 241
    if-eqz v17, :cond_9

    .line 242
    .line 243
    const/4 v4, 0x6

    .line 244
    if-lt v6, v4, :cond_b

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_9
    const-string v4, "600031"

    .line 248
    .line 249
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_a

    .line 254
    .line 255
    const/4 v4, 0x3

    .line 256
    if-lt v6, v4, :cond_b

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_a
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_c

    .line 264
    .line 265
    const/4 v4, 0x5

    .line 266
    if-lt v6, v4, :cond_b

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_b
    const/4 v4, 0x0

    .line 270
    goto :goto_5

    .line 271
    :cond_c
    :goto_4
    const/4 v4, 0x1

    .line 272
    :goto_5
    if-nez v4, :cond_d

    .line 273
    .line 274
    const-string v1, "VIP\u7b49\u7ea7\u4e0d\u8db3"

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_d
    invoke-static {v7, v11, v14, v5}, Lcom/sgscq/vpn/p5;->v1(IILjava/lang/String;Ljava/util/Map;)I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-ge v13, v4, :cond_e

    .line 282
    .line 283
    const-string v1, "\u5143\u5b9d\u4e0d\u8db3"

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_e
    invoke-static {v14}, Lcom/sgscq/vpn/cloud/m0;->y1(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    move-object/from16 v26, v10

    .line 291
    .line 292
    iget-object v10, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 293
    .line 294
    if-eqz v11, :cond_f

    .line 295
    .line 296
    invoke-static {v14, v5}, Lcom/sgscq/vpn/cloud/m0;->x2(Ljava/lang/String;Ljava/util/Map;)I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    invoke-static {v6, v10, v14}, Lcom/sgscq/vpn/cloud/m0;->i2(ILandroid/content/Context;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    add-int/2addr v11, v7

    .line 305
    if-le v11, v6, :cond_f

    .line 306
    .line 307
    const-string v1, "\u4eca\u65e5\u8d2d\u4e70\u6b21\u6570\u5df2\u8fbeVIP\u4e0a\u9650"

    .line 308
    .line 309
    :goto_6
    invoke-static {v1}, Lcom/sgscq/vpn/handler/x0;->W(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    move-object/from16 v27, v2

    .line 314
    .line 315
    goto/16 :goto_14

    .line 316
    .line 317
    :cond_f
    sub-int/2addr v13, v4

    .line 318
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-interface {v5, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    const-string v4, "600018"

    .line 326
    .line 327
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-nez v4, :cond_11

    .line 332
    .line 333
    const-string v4, "600019"

    .line 334
    .line 335
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_11

    .line 340
    .line 341
    const-string v4, "600020"

    .line 342
    .line 343
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-nez v4, :cond_11

    .line 348
    .line 349
    const-string v4, "600021"

    .line 350
    .line 351
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-nez v4, :cond_11

    .line 356
    .line 357
    const-string v4, "600100"

    .line 358
    .line 359
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    if-eqz v4, :cond_10

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_10
    const/4 v4, 0x0

    .line 367
    goto :goto_8

    .line 368
    :cond_11
    :goto_7
    const/4 v4, 0x1

    .line 369
    :goto_8
    const-string v6, "ladder_challenging_num"

    .line 370
    .line 371
    const-string v11, "cd_item_price"

    .line 372
    .line 373
    const-string v13, "coolDownTime"

    .line 374
    .line 375
    move-object/from16 v27, v2

    .line 376
    .line 377
    const-string v2, "dungeon_cold_time"

    .line 378
    .line 379
    move-object/from16 v17, v15

    .line 380
    .line 381
    const-string v15, "user_energy"

    .line 382
    .line 383
    move-object/from16 v18, v9

    .line 384
    .line 385
    const-string v9, "user_power"

    .line 386
    .line 387
    move-object/from16 v19, v15

    .line 388
    .line 389
    const-string v15, "ladderChallengeTimes"

    .line 390
    .line 391
    if-eqz v4, :cond_12

    .line 392
    .line 393
    const/4 v0, 0x0

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-interface {v5, v15, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    mul-int v1, v12, v7

    .line 411
    .line 412
    add-int/2addr v1, v0

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-interface {v5, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    invoke-static {v8, v5, v14, v7, v10}, Lcom/sgscq/vpn/handler/x0;->Z0(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/lang/String;ILandroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_12
    const/4 v4, 0x0

    .line 432
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_13

    .line 437
    .line 438
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    const-string v0, "base_cold_time"

    .line 460
    .line 461
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    :goto_9
    move-object/from16 v22, v2

    .line 469
    .line 470
    move-object/from16 v20, v11

    .line 471
    .line 472
    move-object/from16 v21, v13

    .line 473
    .line 474
    goto/16 :goto_11

    .line 475
    .line 476
    :cond_13
    invoke-static {v14}, Lcom/sgscq/vpn/cloud/m0;->o1(Ljava/lang/String;)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_1f

    .line 481
    .line 482
    invoke-static {v14, v5}, Lcom/sgscq/vpn/cloud/m0;->x2(Ljava/lang/String;Ljava/util/Map;)I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-eqz v3, :cond_14

    .line 491
    .line 492
    const-string v3, "elite_dungeon_times_extra"

    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_14
    const-string v3, "dungeon_times_extra"

    .line 496
    .line 497
    :goto_a
    if-nez v1, :cond_15

    .line 498
    .line 499
    goto :goto_b

    .line 500
    :cond_15
    const-string v4, "extra_param"

    .line 501
    .line 502
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    check-cast v1, Ljava/lang/String;

    .line 507
    .line 508
    move-object/from16 v16, v1

    .line 509
    .line 510
    :goto_b
    invoke-static/range {v16 .. v16}, Lcom/sgscq/vpn/handler/x0;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-eqz v4, :cond_16

    .line 519
    .line 520
    const/4 v1, 0x0

    .line 521
    move-object/from16 v22, v2

    .line 522
    .line 523
    move-object/from16 v20, v11

    .line 524
    .line 525
    move-object/from16 v21, v13

    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_16
    const-string v4, "dungeon_times"

    .line 529
    .line 530
    move-object/from16 v20, v11

    .line 531
    .line 532
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    move-object/from16 v21, v13

    .line 537
    .line 538
    instance-of v13, v11, Ljava/util/Map;

    .line 539
    .line 540
    if-eqz v13, :cond_17

    .line 541
    .line 542
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 543
    .line 544
    check-cast v11, Ljava/util/Map;

    .line 545
    .line 546
    invoke-direct {v13, v11}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 547
    .line 548
    .line 549
    move-object/from16 v22, v2

    .line 550
    .line 551
    goto :goto_c

    .line 552
    :cond_17
    instance-of v13, v11, Ljava/lang/String;

    .line 553
    .line 554
    if-eqz v13, :cond_18

    .line 555
    .line 556
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v13

    .line 560
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    move-object/from16 v22, v2

    .line 565
    .line 566
    const-string v2, "{"

    .line 567
    .line 568
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-eqz v2, :cond_19

    .line 573
    .line 574
    :try_start_0
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 575
    .line 576
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-direct {v13, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .line 586
    .line 587
    goto :goto_c

    .line 588
    :catch_0
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 589
    .line 590
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 591
    .line 592
    .line 593
    goto :goto_c

    .line 594
    :cond_18
    move-object/from16 v22, v2

    .line 595
    .line 596
    :cond_19
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 597
    .line 598
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 599
    .line 600
    .line 601
    :goto_c
    const/4 v2, 0x0

    .line 602
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    invoke-interface {v5, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    const/4 v1, 0x1

    .line 613
    :goto_d
    if-nez v1, :cond_1e

    .line 614
    .line 615
    mul-int v1, v12, v7

    .line 616
    .line 617
    if-gtz v1, :cond_1a

    .line 618
    .line 619
    goto :goto_10

    .line 620
    :cond_1a
    invoke-static/range {v16 .. v16}, Lcom/sgscq/vpn/handler/x0;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    instance-of v11, v4, Ljava/util/Map;

    .line 629
    .line 630
    if-nez v11, :cond_1c

    .line 631
    .line 632
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 633
    .line 634
    .line 635
    move-result v13

    .line 636
    if-nez v13, :cond_1b

    .line 637
    .line 638
    goto :goto_e

    .line 639
    :cond_1b
    const/4 v2, 0x0

    .line 640
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    invoke-static {v4, v2}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    add-int/2addr v2, v1

    .line 657
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    goto :goto_10

    .line 665
    :cond_1c
    :goto_e
    if-eqz v11, :cond_1d

    .line 666
    .line 667
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 668
    .line 669
    check-cast v4, Ljava/util/Map;

    .line 670
    .line 671
    invoke-direct {v11, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 672
    .line 673
    .line 674
    goto :goto_f

    .line 675
    :cond_1d
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 676
    .line 677
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 678
    .line 679
    .line 680
    :goto_f
    const/4 v4, 0x0

    .line 681
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 682
    .line 683
    .line 684
    move-result-object v13

    .line 685
    invoke-interface {v11, v2, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v13

    .line 689
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    invoke-static {v13, v4}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 694
    .line 695
    .line 696
    move-result v4

    .line 697
    add-int/2addr v4, v1

    .line 698
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    invoke-interface {v5, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    :cond_1e
    :goto_10
    add-int/2addr v0, v7

    .line 709
    invoke-static {v0, v14, v5}, Lcom/sgscq/vpn/cloud/m0;->D2(ILjava/lang/String;Ljava/util/Map;)V

    .line 710
    .line 711
    .line 712
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 713
    .line 714
    invoke-direct {v0, v8}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 715
    .line 716
    .line 717
    invoke-static {v10, v14, v0, v5}, Lcom/sgscq/vpn/handler/x0;->Z(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 718
    .line 719
    .line 720
    move-object v8, v0

    .line 721
    goto :goto_11

    .line 722
    :cond_1f
    move-object/from16 v22, v2

    .line 723
    .line 724
    move-object/from16 v20, v11

    .line 725
    .line 726
    move-object/from16 v21, v13

    .line 727
    .line 728
    const-string v0, "600008"

    .line 729
    .line 730
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    if-nez v0, :cond_21

    .line 735
    .line 736
    const-string v0, "600029"

    .line 737
    .line 738
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_20

    .line 743
    .line 744
    goto :goto_12

    .line 745
    :cond_20
    const/4 v0, 0x0

    .line 746
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-interface {v5, v9, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 759
    .line 760
    .line 761
    move-result v0

    .line 762
    mul-int v1, v12, v7

    .line 763
    .line 764
    add-int/2addr v1, v0

    .line 765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    invoke-static {v8, v5, v14, v7, v10}, Lcom/sgscq/vpn/handler/x0;->Z0(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/lang/String;ILandroid/content/Context;)V

    .line 773
    .line 774
    .line 775
    :goto_11
    move-object/from16 v2, v19

    .line 776
    .line 777
    goto :goto_13

    .line 778
    :cond_21
    :goto_12
    const/4 v0, 0x0

    .line 779
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    move-object/from16 v2, v19

    .line 784
    .line 785
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    invoke-static {v1, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    mul-int v1, v12, v7

    .line 798
    .line 799
    add-int/2addr v1, v0

    .line 800
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    invoke-static {v8, v5, v14, v7, v10}, Lcom/sgscq/vpn/handler/x0;->Z0(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/lang/String;ILandroid/content/Context;)V

    .line 808
    .line 809
    .line 810
    :goto_13
    invoke-static {}, Lcom/sgscq/vpn/handler/x0;->X0()Ljava/util/LinkedHashMap;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    const-string v1, "quick_info"

    .line 815
    .line 816
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    move-object/from16 v3, v18

    .line 824
    .line 825
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-object/from16 v1, v17

    .line 829
    .line 830
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    const/4 v1, 0x0

    .line 838
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    invoke-interface {v5, v9, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    invoke-interface {v5, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    invoke-interface {v5, v15, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-interface {v5, v15, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    move-object/from16 v3, v22

    .line 887
    .line 888
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    move-object/from16 v3, v21

    .line 900
    .line 901
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    move-object/from16 v2, v20

    .line 913
    .line 914
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    invoke-static {v14, v8, v5}, Lcom/sgscq/vpn/handler/x0;->Y(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 922
    .line 923
    .line 924
    new-instance v1, Ljava/util/ArrayList;

    .line 925
    .line 926
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .line 928
    .line 929
    const-string v16, "id"

    .line 930
    .line 931
    const-string v18, "num"

    .line 932
    .line 933
    mul-int/2addr v12, v7

    .line 934
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 935
    .line 936
    .line 937
    move-result-object v19

    .line 938
    const-string v20, "item_num"

    .line 939
    .line 940
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 941
    .line 942
    .line 943
    move-result-object v21

    .line 944
    const-string v22, "type"

    .line 945
    .line 946
    const/4 v2, 0x5

    .line 947
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 948
    .line 949
    .line 950
    move-result-object v23

    .line 951
    move-object/from16 v17, v14

    .line 952
    .line 953
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    move-object/from16 v3, v26

    .line 958
    .line 959
    invoke-static {v3, v14, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    const-string v2, "add_list"

    .line 967
    .line 968
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    const-string v1, "cmn_modules"

    .line 972
    .line 973
    const-string v2, "Player"

    .line 974
    .line 975
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    :goto_14
    move-object/from16 v1, v24

    .line 979
    .line 980
    move-object/from16 v2, v25

    .line 981
    .line 982
    invoke-virtual {v2, v1, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 983
    .line 984
    .line 985
    invoke-static {v0}, Lcom/sgscq/vpn/handler/x0;->K(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v2

    .line 989
    move-object/from16 v3, p0

    .line 990
    .line 991
    invoke-virtual {v3, v1, v5, v5, v2}, Lcom/sgscq/vpn/handler/x0;->n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    const-string v2, "cmn"

    .line 996
    .line 997
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    move-object/from16 v1, v27

    .line 1005
    .line 1006
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    return-object v0
.end method

.method public final m0(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-boolean v3, Lcom/sgscq/vpn/c7;->i:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->M0()[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    return-object v1

    .line 16
    :cond_0
    new-instance v3, Lcom/sgscq/vpn/h;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct {v3, v5, v4}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-boolean v4, v3, Lcom/sgscq/vpn/f;->c:Z

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget v5, v3, Lcom/sgscq/vpn/f;->f:I

    .line 35
    .line 36
    :cond_1
    new-instance v3, Lcom/sgscq/vpn/b0;

    .line 37
    .line 38
    iget-object v4, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v3, v4}, Lcom/sgscq/vpn/b0;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/sgscq/vpn/b0;->a()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    new-instance v4, Lcom/sgscq/vpn/h;

    .line 50
    .line 51
    iget-object v6, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 52
    .line 53
    iget-object v6, v6, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    invoke-direct {v4, v7, v6}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/sgscq/vpn/h;->a()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/handler/x0;->O(III)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-object v7, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 68
    .line 69
    invoke-virtual {v7, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iget-object v8, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 74
    .line 75
    iget-object v8, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 76
    .line 77
    invoke-virtual {v8, v7}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    const-string v15, "ret"

    .line 82
    .line 83
    if-nez v14, :cond_2

    .line 84
    .line 85
    iget-object v1, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 86
    .line 87
    const/4 v2, -0x1

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v4, "code"

    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const-string v6, "result"

    .line 99
    .line 100
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    const-string v8, "msg"

    .line 103
    .line 104
    const-string v9, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    .line 105
    .line 106
    const-string v10, "error_code"

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v15, v3, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    return-object v1

    .line 129
    :cond_2
    const-string v13, "order_id"

    .line 130
    .line 131
    const-string v8, "orderId"

    .line 132
    .line 133
    const-string v9, "order_ids"

    .line 134
    .line 135
    filled-new-array {v13, v8, v9}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v2, v8}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-static {v8}, Lcom/sgscq/vpn/handler/x0;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    const-string v8, "pk_id"

    .line 148
    .line 149
    const-string v9, "id"

    .line 150
    .line 151
    const-string v10, "product_id"

    .line 152
    .line 153
    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-static {v2, v8}, Lcom/sgscq/vpn/handler/x0;->e0(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    const-string v11, ""

    .line 166
    .line 167
    if-nez v9, :cond_3

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_3
    invoke-static {v12, v14}, Lcom/sgscq/vpn/handler/x0;->E0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    if-nez v8, :cond_4

    .line 175
    .line 176
    move-object v8, v11

    .line 177
    goto :goto_0

    .line 178
    :cond_4
    invoke-interface {v8, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->a()I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    const-string v10, "charge_6480"

    .line 191
    .line 192
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_6

    .line 197
    .line 198
    const/4 v8, 0x3

    .line 199
    if-lt v9, v8, :cond_5

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_5
    const/4 v8, 0x0

    .line 203
    goto :goto_2

    .line 204
    :cond_6
    :goto_1
    const/4 v8, 0x1

    .line 205
    :goto_2
    if-nez v8, :cond_7

    .line 206
    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->p0()[B

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    return-object v1

    .line 212
    :cond_7
    invoke-static {v12, v14, v2}, Lcom/sgscq/vpn/handler/x0;->Q0(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    invoke-static {v12, v14}, Lcom/sgscq/vpn/handler/x0;->o0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    move-object/from16 v16, v13

    .line 225
    .line 226
    const-string v13, "daily_recharge_day"

    .line 227
    .line 228
    invoke-static {v14, v13, v11, v9}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    if-eqz v11, :cond_8

    .line 233
    .line 234
    iget-object v11, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 235
    .line 236
    const-string v13, "daily_recharge_rmb_used"

    .line 237
    .line 238
    move-object/from16 v17, v15

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    invoke-virtual {v11, v15, v13, v14}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    goto :goto_3

    .line 246
    :cond_8
    move-object/from16 v17, v15

    .line 247
    .line 248
    const/4 v11, 0x0

    .line 249
    :goto_3
    move v15, v11

    .line 250
    const-string v13, " rmb="

    .line 251
    .line 252
    const-string v11, "SGSCQ_SRV"

    .line 253
    .line 254
    if-nez v8, :cond_9

    .line 255
    .line 256
    add-int v1, v15, v10

    .line 257
    .line 258
    if-le v1, v6, :cond_9

    .line 259
    .line 260
    sub-int v1, v6, v15

    .line 261
    .line 262
    const/4 v2, 0x0

    .line 263
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-static {v10, v1}, Lcom/sgscq/vpn/handler/x0;->y(II)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v7, "[Recharge] daily limit: level="

    .line 274
    .line 275
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v5, " biliBonus="

    .line 282
    .line 283
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v3, " douyinBonus="

    .line 290
    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v3, " limit="

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v3, " used="

    .line 306
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-static {v11, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 327
    .line 328
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 329
    .line 330
    invoke-static {v15, v6}, Lcom/sgscq/vpn/handler/x0;->z(II)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-static {v2, v3}, Lcom/sgscq/vpn/p5;->l1(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/handler/x0;->L0(Ljava/lang/String;)[B

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    return-object v1

    .line 342
    :cond_9
    invoke-static {v14, v2, v12, v10}, Lcom/sgscq/vpn/handler/x0;->P0(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v8, :cond_a

    .line 347
    .line 348
    const-string v2, "current_charge_gold"

    .line 349
    .line 350
    invoke-static {v1, v2, v14}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    move v5, v1

    .line 355
    move v1, v10

    .line 356
    move-object/from16 v38, v11

    .line 357
    .line 358
    move-object v2, v12

    .line 359
    move-object/from16 v39, v13

    .line 360
    .line 361
    move-object v4, v14

    .line 362
    move-object/from16 p2, v16

    .line 363
    .line 364
    move-object/from16 v3, v17

    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_a
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 368
    .line 369
    .line 370
    move-result-wide v3

    .line 371
    invoke-static {v14, v2, v3, v4, v9}, Lcom/sgscq/vpn/handler/x0;->H0(Ljava/util/Map;Ljava/util/Map;JLjava/lang/String;)Lcom/sgscq/vpn/q4;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iget-object v2, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 376
    .line 377
    iget-object v8, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 378
    .line 379
    iget-object v2, v1, Lcom/sgscq/vpn/q4;->b:Ljava/lang/String;

    .line 380
    .line 381
    const-string v3, "recharge_grant"

    .line 382
    .line 383
    iget-object v4, v1, Lcom/sgscq/vpn/q4;->d:Ljava/util/Map;

    .line 384
    .line 385
    move/from16 v18, v6

    .line 386
    .line 387
    iget-wide v5, v1, Lcom/sgscq/vpn/q4;->e:J

    .line 388
    .line 389
    move-object v9, v7

    .line 390
    move v1, v10

    .line 391
    move-object v10, v14

    .line 392
    move-object/from16 v38, v11

    .line 393
    .line 394
    move-object v11, v2

    .line 395
    move-object v2, v12

    .line 396
    move-object v12, v3

    .line 397
    move-object/from16 v39, v13

    .line 398
    .line 399
    move-object/from16 v3, v16

    .line 400
    .line 401
    move-object v13, v4

    .line 402
    move-object/from16 p2, v3

    .line 403
    .line 404
    move-object v4, v14

    .line 405
    move/from16 v16, v15

    .line 406
    .line 407
    move-object/from16 v3, v17

    .line 408
    .line 409
    move-wide v14, v5

    .line 410
    invoke-virtual/range {v8 .. v15}, Lcom/sgscq/vpn/h5;->P(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Ljava/util/LinkedHashMap;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    const-string v6, "gold"

    .line 415
    .line 416
    const/4 v8, 0x0

    .line 417
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    check-cast v5, Ljava/lang/Number;

    .line 426
    .line 427
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    iget-object v6, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 432
    .line 433
    iget-object v6, v6, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 434
    .line 435
    add-int v15, v16, v1

    .line 436
    .line 437
    move/from16 v8, v18

    .line 438
    .line 439
    invoke-static {v15, v8}, Lcom/sgscq/vpn/handler/x0;->z(II)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    invoke-static {v6, v8}, Lcom/sgscq/vpn/p5;->l1(Landroid/content/Context;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :goto_4
    iget-object v6, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 447
    .line 448
    const-string v8, "totalRecharge"

    .line 449
    .line 450
    const/4 v9, 0x0

    .line 451
    invoke-virtual {v6, v9, v8, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    invoke-static {v6}, Lcom/sgscq/vpn/handler/x0;->J(I)I

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    iget-object v8, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 460
    .line 461
    iget-object v8, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 462
    .line 463
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    invoke-static {v4}, Lcom/sgscq/vpn/h5;->k0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    invoke-static {v8}, Lcom/sgscq/vpn/h5;->w(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v40

    .line 478
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 479
    .line 480
    .line 481
    move-result-wide v8

    .line 482
    long-to-int v9, v8

    .line 483
    new-instance v15, Lorg/json/JSONObject;

    .line 484
    .line 485
    iget-object v8, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 486
    .line 487
    iget-object v10, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 488
    .line 489
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 490
    .line 491
    .line 492
    move-result v11

    .line 493
    int-to-long v11, v11

    .line 494
    invoke-virtual {v8, v11, v12, v4}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 495
    .line 496
    .line 497
    move-result-wide v13

    .line 498
    iget-object v8, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 499
    .line 500
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 501
    .line 502
    .line 503
    move-result v11

    .line 504
    const-string v12, "user_gold"

    .line 505
    .line 506
    invoke-virtual {v8, v11, v12, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 507
    .line 508
    .line 509
    move-result v11

    .line 510
    iget-object v8, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 511
    .line 512
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 513
    .line 514
    .line 515
    move-result v12

    .line 516
    move-object/from16 v16, v15

    .line 517
    .line 518
    const-string v15, "user_energy"

    .line 519
    .line 520
    invoke-virtual {v8, v12, v15, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 521
    .line 522
    .line 523
    move-result v12

    .line 524
    iget-object v8, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 525
    .line 526
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 527
    .line 528
    .line 529
    move-result v15

    .line 530
    move/from16 v41, v5

    .line 531
    .line 532
    const-string v5, "user_power"

    .line 533
    .line 534
    invoke-virtual {v8, v15, v5, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    move-object v8, v10

    .line 539
    move v10, v11

    .line 540
    move v11, v12

    .line 541
    move v12, v5

    .line 542
    move-object/from16 v5, v16

    .line 543
    .line 544
    move-object v15, v7

    .line 545
    move-object/from16 v16, v4

    .line 546
    .line 547
    invoke-virtual/range {v8 .. v16}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 548
    .line 549
    .line 550
    move-result-object v8

    .line 551
    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 552
    .line 553
    .line 554
    iget-object v8, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 555
    .line 556
    iget-object v8, v8, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 557
    .line 558
    const/4 v9, 0x0

    .line 559
    new-array v10, v9, [Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v8, v4, v5, v10}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    const-string v16, "code"

    .line 570
    .line 571
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    .line 573
    .line 574
    move-result-object v17

    .line 575
    const-string v18, "result"

    .line 576
    .line 577
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 578
    .line 579
    move-object/from16 v19, v8

    .line 580
    .line 581
    const-string v20, "msg"

    .line 582
    .line 583
    const-string v21, "success"

    .line 584
    .line 585
    const-string v22, "error_code"

    .line 586
    .line 587
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object v23

    .line 591
    const-string v24, "order_id"

    .line 592
    .line 593
    const-string v26, "orderId"

    .line 594
    .line 595
    const-string v28, "status"

    .line 596
    .line 597
    const/4 v9, 0x1

    .line 598
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v29

    .line 602
    const-string v30, "pay_status"

    .line 603
    .line 604
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object v31

    .line 608
    const-string v32, "vip_level"

    .line 609
    .line 610
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v33

    .line 614
    const-string v34, "user_vip_level"

    .line 615
    .line 616
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 617
    .line 618
    .line 619
    move-result-object v35

    .line 620
    const-string v36, "mail_tip"

    .line 621
    .line 622
    const-string v37, "\u5145\u503c\u5143\u5b9d\u5df2\u53d1\u9001\u5230\u90ae\u4ef6"

    .line 623
    .line 624
    move-object/from16 v25, v2

    .line 625
    .line 626
    move-object/from16 v27, v2

    .line 627
    .line 628
    filled-new-array/range {v16 .. v37}, [Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    invoke-static {v3, v5, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-static/range {v40 .. v40}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    const-string v9, "push_info"

    .line 645
    .line 646
    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    const-string v5, "cmn"

    .line 650
    .line 651
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    const-string v4, "product.checkOrder"

    .line 655
    .line 656
    move-object/from16 v5, p1

    .line 657
    .line 658
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    if-nez v4, :cond_d

    .line 663
    .line 664
    const-string v4, "pay.checkOrder"

    .line 665
    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    if-eqz v4, :cond_b

    .line 671
    .line 672
    goto :goto_5

    .line 673
    :cond_b
    const-string v4, "payIos.iosCharge"

    .line 674
    .line 675
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-eqz v4, :cond_c

    .line 680
    .line 681
    const-string v16, "orderId"

    .line 682
    .line 683
    const-string v18, "is_completed"

    .line 684
    .line 685
    const-string v20, "price"

    .line 686
    .line 687
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 688
    .line 689
    .line 690
    move-result-object v21

    .line 691
    const-string v22, "gold"

    .line 692
    .line 693
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 694
    .line 695
    .line 696
    move-result-object v23

    .line 697
    const-string v24, "pay_status"

    .line 698
    .line 699
    const/4 v4, 0x1

    .line 700
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v25

    .line 704
    const-string v26, "status"

    .line 705
    .line 706
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 707
    .line 708
    .line 709
    move-result-object v27

    .line 710
    const-string v28, "flag"

    .line 711
    .line 712
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 713
    .line 714
    .line 715
    move-result-object v29

    .line 716
    move-object/from16 v17, v2

    .line 717
    .line 718
    move-object/from16 v19, v8

    .line 719
    .line 720
    filled-new-array/range {v16 .. v29}, [Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    move-object/from16 v8, p2

    .line 725
    .line 726
    invoke-static {v8, v2, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    const-string v4, "chargeInfo"

    .line 731
    .line 732
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    :cond_c
    move/from16 v4, v41

    .line 736
    .line 737
    goto :goto_6

    .line 738
    :cond_d
    :goto_5
    move/from16 v4, v41

    .line 739
    .line 740
    invoke-static {v1, v4, v2}, Lcom/sgscq/vpn/handler/x0;->m(IILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 745
    .line 746
    .line 747
    :goto_6
    const-string v2, "[Recharge] "

    .line 748
    .line 749
    const-string v8, " uid="

    .line 750
    .line 751
    move-object/from16 v9, v39

    .line 752
    .line 753
    invoke-static {v2, v5, v8, v7, v9}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string v1, " gold="

    .line 761
    .line 762
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    const-string v1, " vip="

    .line 769
    .line 770
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    move-object/from16 v2, v38

    .line 781
    .line 782
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    iget-object v1, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 786
    .line 787
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    return-object v1
.end method

.method public final varargs n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v2, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5, p3}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v7

    const-string v4, "user_gold"

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v5

    invoke-virtual {v1, v5, v4, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v5, "user_energy"

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v6

    invoke-virtual {v1, v6, v5, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    const-string v6, "user_power"

    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v9

    invoke-virtual {v1, v9, v6, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    move-object v9, p1

    move-object v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object p1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {p1, p2, v0, p4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final n0(Ljava/util/Map;)[B
    .locals 72

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    const-string v2, "type"

    .line 12
    .line 13
    const-string v3, "4"

    .line 14
    .line 15
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "is_multi"

    .line 22
    .line 23
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/sgscq/vpn/handler/x0;->u0(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v15

    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string v3, "multi"

    .line 46
    .line 47
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/sgscq/vpn/handler/x0;->u0(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v12, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    move v12, v5

    .line 63
    :goto_1
    const/4 v3, 0x4

    .line 64
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move v2, v3

    .line 70
    :goto_2
    const/4 v4, 0x3

    .line 71
    const/4 v7, 0x2

    .line 72
    if-eq v2, v7, :cond_2

    .line 73
    .line 74
    if-eq v2, v4, :cond_2

    .line 75
    .line 76
    if-eq v2, v3, :cond_2

    .line 77
    .line 78
    move v2, v3

    .line 79
    :cond_2
    if-eqz v12, :cond_3

    .line 80
    .line 81
    const/16 v5, 0xa

    .line 82
    .line 83
    :cond_3
    iget-object v3, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 86
    .line 87
    invoke-virtual {v3, v10}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    const-string v13, "error_code"

    .line 92
    .line 93
    const/4 v3, -0x1

    .line 94
    const-string v11, "SGSCQ_SRV"

    .line 95
    .line 96
    if-nez v14, :cond_4

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "[Wine] player not found: "

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v11, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 116
    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v4, "ret"

    .line 122
    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const-string v6, "code"

    .line 128
    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const-string v8, "result"

    .line 134
    .line 135
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 136
    .line 137
    const-string v10, "msg"

    .line 138
    .line 139
    const-string v11, "\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728"

    .line 140
    .line 141
    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v13, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    return-object v1

    .line 158
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    new-instance v9, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v7, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v4, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    move-object/from16 v16, v15

    .line 179
    .line 180
    new-instance v15, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    move-object/from16 v17, v4

    .line 186
    .line 187
    new-instance v4, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    move-object/from16 v18, v8

    .line 193
    .line 194
    move-object/from16 v19, v9

    .line 195
    .line 196
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 197
    .line 198
    .line 199
    move-result-wide v8

    .line 200
    move-object/from16 v20, v15

    .line 201
    .line 202
    const-string v15, "wine_copper_time"

    .line 203
    .line 204
    move-object/from16 v21, v13

    .line 205
    .line 206
    const-string v13, "wine_silver_time"

    .line 207
    .line 208
    move-object/from16 v22, v15

    .line 209
    .line 210
    const-string v15, "wine_gold_time"

    .line 211
    .line 212
    const/4 v3, 0x2

    .line 213
    if-eq v2, v3, :cond_6

    .line 214
    .line 215
    const/4 v3, 0x3

    .line 216
    move-object/from16 v24, v6

    .line 217
    .line 218
    if-eq v2, v3, :cond_5

    .line 219
    .line 220
    move-object/from16 v3, v22

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_5
    move-object v3, v13

    .line 224
    goto :goto_3

    .line 225
    :cond_6
    move-object/from16 v24, v6

    .line 226
    .line 227
    move-object v3, v15

    .line 228
    :goto_3
    const/4 v6, 0x2

    .line 229
    if-eq v2, v6, :cond_8

    .line 230
    .line 231
    const/4 v6, 0x3

    .line 232
    if-eq v2, v6, :cond_7

    .line 233
    .line 234
    const/16 v6, 0x12c

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_7
    const/16 v6, 0x258

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    const/16 v6, 0x708

    .line 241
    .line 242
    :goto_4
    invoke-static {v14, v3, v8, v9, v6}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-nez v6, :cond_9

    .line 247
    .line 248
    if-nez v12, :cond_9

    .line 249
    .line 250
    const/16 v25, 0x1

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_9
    const/16 v25, 0x0

    .line 254
    .line 255
    :goto_5
    move-wide/from16 v26, v8

    .line 256
    .line 257
    move/from16 v8, v25

    .line 258
    .line 259
    const-string v9, "user_item_id"

    .line 260
    .line 261
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    check-cast v9, Ljava/lang/String;

    .line 266
    .line 267
    const-string v1, "user_power"

    .line 268
    .line 269
    move-object/from16 v25, v3

    .line 270
    .line 271
    const-string v3, "user_energy"

    .line 272
    .line 273
    move-object/from16 v28, v7

    .line 274
    .line 275
    const-string v7, "user_gold"

    .line 276
    .line 277
    move/from16 v29, v5

    .line 278
    .line 279
    const-string v5, "[Wine] uid="

    .line 280
    .line 281
    move-object/from16 v30, v4

    .line 282
    .line 283
    const-string v4, "pk_id"

    .line 284
    .line 285
    move-object/from16 v31, v13

    .line 286
    .line 287
    const-string v13, "gold_guarantee_phase"

    .line 288
    .line 289
    move-object/from16 v32, v13

    .line 290
    .line 291
    const-string v13, "gold_wine_count"

    .line 292
    .line 293
    move-object/from16 v33, v4

    .line 294
    .line 295
    const-string v4, "add"

    .line 296
    .line 297
    move-object/from16 v34, v13

    .line 298
    .line 299
    const-string v13, "Item"

    .line 300
    .line 301
    move/from16 v35, v6

    .line 302
    .line 303
    const-string v6, ""

    .line 304
    .line 305
    if-eqz v8, :cond_a

    .line 306
    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v5, " free draw, no item needed"

    .line 316
    .line 317
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-static {v11, v5}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    move-object/from16 v35, v7

    .line 328
    .line 329
    move/from16 v36, v12

    .line 330
    .line 331
    move-object/from16 v39, v15

    .line 332
    .line 333
    move-object/from16 v9, v20

    .line 334
    .line 335
    move-wide/from16 v7, v26

    .line 336
    .line 337
    move-object/from16 v38, v33

    .line 338
    .line 339
    move-object v12, v0

    .line 340
    move-object/from16 v26, v3

    .line 341
    .line 342
    move-object v15, v4

    .line 343
    move-object/from16 v33, v10

    .line 344
    .line 345
    move-object/from16 v27, v22

    .line 346
    .line 347
    move-object/from16 v22, v31

    .line 348
    .line 349
    move-object/from16 v0, v32

    .line 350
    .line 351
    move-object v10, v6

    .line 352
    move-object/from16 v70, v34

    .line 353
    .line 354
    move-object/from16 v34, v1

    .line 355
    .line 356
    move-object/from16 v1, v70

    .line 357
    .line 358
    goto/16 :goto_16

    .line 359
    .line 360
    :cond_a
    move-object/from16 v36, v6

    .line 361
    .line 362
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    move/from16 v37, v8

    .line 367
    .line 368
    instance-of v8, v6, Ljava/util/Map;

    .line 369
    .line 370
    if-nez v8, :cond_b

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_b
    check-cast v6, Ljava/util/Map;

    .line 374
    .line 375
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    instance-of v8, v6, Ljava/util/List;

    .line 380
    .line 381
    if-nez v8, :cond_c

    .line 382
    .line 383
    :goto_6
    const/4 v6, 0x0

    .line 384
    move-object/from16 v38, v4

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_c
    check-cast v6, Ljava/util/List;

    .line 388
    .line 389
    const/4 v8, 0x2

    .line 390
    move-object/from16 v38, v4

    .line 391
    .line 392
    const/4 v4, 0x3

    .line 393
    if-eq v2, v8, :cond_e

    .line 394
    .line 395
    if-eq v2, v4, :cond_d

    .line 396
    .line 397
    const-string v4, "600025"

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_d
    const-string v4, "600024"

    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_e
    const-string v4, "600023"

    .line 404
    .line 405
    :goto_7
    invoke-static {v6, v9, v4, v12}, Lcom/sgscq/vpn/handler/x0;->Y0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sgscq/vpn/t4;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    if-eqz v8, :cond_f

    .line 410
    .line 411
    move-object v6, v8

    .line 412
    goto :goto_9

    .line 413
    :cond_f
    if-eqz v12, :cond_10

    .line 414
    .line 415
    const-string v8, "600032"

    .line 416
    .line 417
    invoke-static {v8, v6}, Lcom/sgscq/vpn/handler/x0;->b0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    goto :goto_8

    .line 422
    :cond_10
    invoke-static {v4, v6}, Lcom/sgscq/vpn/handler/x0;->b0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    :goto_8
    invoke-static {v6, v8, v4, v12}, Lcom/sgscq/vpn/handler/x0;->Y0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sgscq/vpn/t4;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    :goto_9
    const-string v4, " multi="

    .line 431
    .line 432
    if-nez v6, :cond_19

    .line 433
    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    const-string v6, "[Wine] cup exhausted, no reward: pk_id="

    .line 437
    .line 438
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v6, " type="

    .line 445
    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-static {v11, v4}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 466
    .line 467
    .line 468
    move-result-wide v4

    .line 469
    long-to-int v4, v4

    .line 470
    iget-object v11, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 471
    .line 472
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    int-to-long v5, v5

    .line 477
    invoke-virtual {v11, v5, v6, v14}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 478
    .line 479
    .line 480
    move-result-wide v8

    .line 481
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    invoke-static {v5, v7, v14}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    invoke-static {v6, v3, v14}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    invoke-virtual {v11}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    invoke-static {v3, v1, v14}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    iget-object v3, v11, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 506
    .line 507
    move-wide/from16 v0, v26

    .line 508
    .line 509
    move/from16 v26, v12

    .line 510
    .line 511
    move-object v12, v11

    .line 512
    move-object v11, v14

    .line 513
    invoke-virtual/range {v3 .. v11}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    iget-object v4, v12, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 518
    .line 519
    new-instance v5, Lorg/json/JSONObject;

    .line 520
    .line 521
    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 522
    .line 523
    .line 524
    filled-new-array {v13}, [Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-virtual {v4, v14, v5, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->F()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v43

    .line 536
    const/16 v4, 0x708

    .line 537
    .line 538
    invoke-static {v14, v15, v0, v1, v4}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 539
    .line 540
    .line 541
    move-result v35

    .line 542
    const/16 v4, 0x258

    .line 543
    .line 544
    move-object/from16 v8, v31

    .line 545
    .line 546
    invoke-static {v14, v8, v0, v1, v4}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 547
    .line 548
    .line 549
    move-result v37

    .line 550
    const/16 v4, 0x12c

    .line 551
    .line 552
    move-object/from16 v9, v22

    .line 553
    .line 554
    invoke-static {v14, v9, v0, v1, v4}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 555
    .line 556
    .line 557
    move-result v39

    .line 558
    invoke-static {v14}, Lcom/sgscq/vpn/handler/x0;->t0(Ljava/util/Map;)Z

    .line 559
    .line 560
    .line 561
    move-result v42

    .line 562
    const/4 v0, 0x0

    .line 563
    move-object/from16 v1, v34

    .line 564
    .line 565
    invoke-virtual {v12, v0, v1, v14}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    move-object/from16 v4, v32

    .line 570
    .line 571
    invoke-virtual {v12, v0, v4, v14}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    const/4 v4, 0x1

    .line 576
    if-gt v0, v4, :cond_11

    .line 577
    .line 578
    const/4 v0, 0x4

    .line 579
    goto :goto_a

    .line 580
    :cond_11
    const/16 v0, 0xa

    .line 581
    .line 582
    :goto_a
    add-int/2addr v1, v4

    .line 583
    rem-int/2addr v1, v0

    .line 584
    sub-int v1, v0, v1

    .line 585
    .line 586
    if-ne v1, v0, :cond_12

    .line 587
    .line 588
    const/4 v1, 0x0

    .line 589
    :cond_12
    move/from16 v40, v1

    .line 590
    .line 591
    if-nez v35, :cond_13

    .line 592
    .line 593
    const/4 v1, 0x1

    .line 594
    goto :goto_b

    .line 595
    :cond_13
    const/4 v1, 0x0

    .line 596
    :goto_b
    move/from16 v36, v1

    .line 597
    .line 598
    if-nez v37, :cond_14

    .line 599
    .line 600
    const/4 v1, 0x1

    .line 601
    goto :goto_c

    .line 602
    :cond_14
    const/4 v1, 0x0

    .line 603
    :goto_c
    move/from16 v38, v1

    .line 604
    .line 605
    move/from16 v41, v0

    .line 606
    .line 607
    invoke-static/range {v35 .. v43}, Lcom/sgscq/vpn/handler/x0;->C(IIIIIIIILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 608
    .line 609
    .line 610
    move-result-object v55

    .line 611
    const/4 v0, 0x2

    .line 612
    if-ne v2, v0, :cond_15

    .line 613
    .line 614
    if-eqz v26, :cond_15

    .line 615
    .line 616
    const-string v0, "\u5c06\u519b\u76cf\u4e0d\u8db3"

    .line 617
    .line 618
    :goto_d
    move-object/from16 v53, v0

    .line 619
    .line 620
    goto :goto_f

    .line 621
    :cond_15
    if-ne v2, v0, :cond_16

    .line 622
    .line 623
    goto :goto_e

    .line 624
    :cond_16
    const/4 v0, 0x3

    .line 625
    if-ne v2, v0, :cond_17

    .line 626
    .line 627
    const-string v0, "\u94f6\u9152\u676f\u4e0d\u8db3"

    .line 628
    .line 629
    goto :goto_d

    .line 630
    :cond_17
    const/4 v0, 0x4

    .line 631
    if-ne v2, v0, :cond_18

    .line 632
    .line 633
    const-string v0, "\u94dc\u9152\u676f\u4e0d\u8db3"

    .line 634
    .line 635
    goto :goto_d

    .line 636
    :cond_18
    :goto_e
    const-string v0, "\u91d1\u9152\u676f\u4e0d\u8db3"

    .line 637
    .line 638
    goto :goto_d

    .line 639
    :goto_f
    const/4 v0, -0x3

    .line 640
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    const-string v44, "ret"

    .line 645
    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    .line 648
    .line 649
    move-result-object v45

    .line 650
    const-string v46, "code"

    .line 651
    .line 652
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v47

    .line 656
    const-string v48, "result"

    .line 657
    .line 658
    sget-object v49, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 659
    .line 660
    const-string v50, "msg"

    .line 661
    .line 662
    const-string v52, "message"

    .line 663
    .line 664
    const-string v54, "user_wine_info"

    .line 665
    .line 666
    const-string v56, "cmn"

    .line 667
    .line 668
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 669
    .line 670
    .line 671
    move-result-object v57

    .line 672
    move-object/from16 v51, v53

    .line 673
    .line 674
    filled-new-array/range {v44 .. v57}, [Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    move-object/from16 v2, v21

    .line 679
    .line 680
    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {v12, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    return-object v0

    .line 693
    :cond_19
    move-object/from16 v9, v22

    .line 694
    .line 695
    move-object/from16 v22, v31

    .line 696
    .line 697
    move-object/from16 v0, v32

    .line 698
    .line 699
    move-wide/from16 v31, v26

    .line 700
    .line 701
    move/from16 v26, v12

    .line 702
    .line 703
    move-object v12, v1

    .line 704
    move-object/from16 v1, v34

    .line 705
    .line 706
    iget-object v8, v6, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    .line 707
    .line 708
    check-cast v8, Ljava/lang/String;

    .line 709
    .line 710
    move-object/from16 v27, v9

    .line 711
    .line 712
    iget-object v9, v6, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v9, Ljava/lang/String;

    .line 715
    .line 716
    move-object/from16 v34, v12

    .line 717
    .line 718
    const-string v12, " item="

    .line 719
    .line 720
    move-object/from16 v39, v15

    .line 721
    .line 722
    const-string v15, " pk="

    .line 723
    .line 724
    invoke-static {v5, v10, v12, v8, v15}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    move-result-object v5

    .line 728
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v12, " consumed="

    .line 732
    .line 733
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    iget v12, v6, Lcom/sgscq/vpn/t4;->a:I

    .line 737
    .line 738
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const-string v12, " remaining="

    .line 742
    .line 743
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    iget v15, v6, Lcom/sgscq/vpn/t4;->b:I

    .line 747
    .line 748
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    const-string v15, " freeEnd="

    .line 752
    .line 753
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    move/from16 v15, v35

    .line 757
    .line 758
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    const-string v15, " isFree="

    .line 762
    .line 763
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    move/from16 v15, v37

    .line 767
    .line 768
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    move/from16 v4, v26

    .line 775
    .line 776
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    invoke-static {v11, v5}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    iget v5, v6, Lcom/sgscq/vpn/t4;->b:I

    .line 787
    .line 788
    if-gtz v5, :cond_1c

    .line 789
    .line 790
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    instance-of v15, v5, Ljava/util/Map;

    .line 795
    .line 796
    if-nez v15, :cond_1a

    .line 797
    .line 798
    move-object/from16 v26, v3

    .line 799
    .line 800
    move-object/from16 v35, v7

    .line 801
    .line 802
    move-object/from16 v15, v38

    .line 803
    .line 804
    goto :goto_10

    .line 805
    :cond_1a
    check-cast v5, Ljava/util/Map;

    .line 806
    .line 807
    move-object/from16 v15, v38

    .line 808
    .line 809
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v5

    .line 813
    move-object/from16 v26, v3

    .line 814
    .line 815
    instance-of v3, v5, Ljava/util/List;

    .line 816
    .line 817
    if-nez v3, :cond_1b

    .line 818
    .line 819
    move-object/from16 v35, v7

    .line 820
    .line 821
    goto :goto_10

    .line 822
    :cond_1b
    check-cast v5, Ljava/util/List;

    .line 823
    .line 824
    new-instance v3, Lcom/sgscq/vpn/r2;

    .line 825
    .line 826
    move-object/from16 v35, v7

    .line 827
    .line 828
    const/4 v7, 0x4

    .line 829
    invoke-direct {v3, v9, v7}, Lcom/sgscq/vpn/r2;-><init>(Ljava/lang/String;I)V

    .line 830
    .line 831
    .line 832
    invoke-interface {v5, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 833
    .line 834
    .line 835
    :goto_10
    move-object/from16 v7, v30

    .line 836
    .line 837
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-object/from16 v30, v7

    .line 841
    .line 842
    move-object/from16 v9, v20

    .line 843
    .line 844
    move-object/from16 v38, v33

    .line 845
    .line 846
    move-object/from16 v33, v10

    .line 847
    .line 848
    move-object/from16 v10, v36

    .line 849
    .line 850
    move/from16 v36, v4

    .line 851
    .line 852
    goto/16 :goto_15

    .line 853
    .line 854
    :cond_1c
    move-object/from16 v26, v3

    .line 855
    .line 856
    move-object/from16 v35, v7

    .line 857
    .line 858
    move-object/from16 v7, v30

    .line 859
    .line 860
    move-object/from16 v15, v38

    .line 861
    .line 862
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    instance-of v7, v3, Ljava/util/Map;

    .line 867
    .line 868
    if-nez v7, :cond_1e

    .line 869
    .line 870
    :cond_1d
    :goto_11
    move-object/from16 v38, v33

    .line 871
    .line 872
    move-object/from16 v33, v10

    .line 873
    .line 874
    move-object/from16 v10, v36

    .line 875
    .line 876
    move/from16 v36, v4

    .line 877
    .line 878
    goto :goto_14

    .line 879
    :cond_1e
    check-cast v3, Ljava/util/Map;

    .line 880
    .line 881
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    instance-of v7, v3, Ljava/util/List;

    .line 886
    .line 887
    if-nez v7, :cond_1f

    .line 888
    .line 889
    goto :goto_11

    .line 890
    :cond_1f
    check-cast v3, Ljava/util/List;

    .line 891
    .line 892
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 897
    .line 898
    .line 899
    move-result v7

    .line 900
    if-eqz v7, :cond_1d

    .line 901
    .line 902
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v7

    .line 906
    move-object/from16 v37, v3

    .line 907
    .line 908
    instance-of v3, v7, Ljava/util/Map;

    .line 909
    .line 910
    if-nez v3, :cond_20

    .line 911
    .line 912
    :goto_13
    move-object/from16 v3, v37

    .line 913
    .line 914
    goto :goto_12

    .line 915
    :cond_20
    check-cast v7, Ljava/util/Map;

    .line 916
    .line 917
    move-object/from16 v3, v33

    .line 918
    .line 919
    move-object/from16 v33, v10

    .line 920
    .line 921
    move-object/from16 v10, v36

    .line 922
    .line 923
    invoke-static {v7, v3, v10, v9}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 924
    .line 925
    .line 926
    move-result v36

    .line 927
    if-eqz v36, :cond_21

    .line 928
    .line 929
    move/from16 v36, v4

    .line 930
    .line 931
    const-string v4, "item_num"

    .line 932
    .line 933
    move-object/from16 v38, v3

    .line 934
    .line 935
    const-string v3, "num"

    .line 936
    .line 937
    invoke-static {v5, v7, v4, v5, v3}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 938
    .line 939
    .line 940
    goto :goto_14

    .line 941
    :cond_21
    move-object/from16 v36, v10

    .line 942
    .line 943
    move-object/from16 v10, v33

    .line 944
    .line 945
    move-object/from16 v33, v3

    .line 946
    .line 947
    goto :goto_13

    .line 948
    :goto_14
    invoke-static {v13, v9, v14}, Lcom/sgscq/vpn/handler/x0;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    move-object/from16 v9, v20

    .line 953
    .line 954
    invoke-static {v9, v3}, Lcom/sgscq/vpn/handler/x0;->h(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 955
    .line 956
    .line 957
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 958
    .line 959
    const-string v4, "[Wine] consumed "

    .line 960
    .line 961
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    iget v4, v6, Lcom/sgscq/vpn/t4;->a:I

    .line 965
    .line 966
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    const-string v4, " "

    .line 970
    .line 971
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    iget v4, v6, Lcom/sgscq/vpn/t4;->b:I

    .line 981
    .line 982
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-static {v11, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    move-object/from16 v12, p0

    .line 993
    .line 994
    move-wide/from16 v7, v31

    .line 995
    .line 996
    :goto_16
    iget-object v3, v12, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 997
    .line 998
    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 999
    .line 1000
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    new-instance v4, Ljava/util/ArrayList;

    .line 1005
    .line 1006
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    .line 1008
    .line 1009
    const-string v6, "General"

    .line 1010
    .line 1011
    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v5

    .line 1015
    check-cast v5, Ljava/util/Map;

    .line 1016
    .line 1017
    move-object/from16 v20, v13

    .line 1018
    .line 1019
    const-string v13, "general_id"

    .line 1020
    .line 1021
    if-eqz v5, :cond_27

    .line 1022
    .line 1023
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v5

    .line 1027
    check-cast v5, Ljava/util/List;

    .line 1028
    .line 1029
    if-eqz v5, :cond_27

    .line 1030
    .line 1031
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v5

    .line 1035
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v31

    .line 1039
    if-eqz v31, :cond_27

    .line 1040
    .line 1041
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v31

    .line 1045
    move-object/from16 v32, v5

    .line 1046
    .line 1047
    move-object/from16 v5, v31

    .line 1048
    .line 1049
    check-cast v5, Ljava/util/Map;

    .line 1050
    .line 1051
    invoke-interface {v5, v13, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v5

    .line 1055
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v5

    .line 1059
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1060
    .line 1061
    .line 1062
    move-result v31

    .line 1063
    if-nez v31, :cond_26

    .line 1064
    .line 1065
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1066
    .line 1067
    .line 1068
    move-result v31

    .line 1069
    if-eqz v31, :cond_22

    .line 1070
    .line 1071
    move-object/from16 v31, v3

    .line 1072
    .line 1073
    goto :goto_18

    .line 1074
    :cond_22
    if-eqz v3, :cond_23

    .line 1075
    .line 1076
    invoke-virtual {v3, v5}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v31

    .line 1080
    move/from16 v70, v31

    .line 1081
    .line 1082
    move-object/from16 v31, v3

    .line 1083
    .line 1084
    move/from16 v3, v70

    .line 1085
    .line 1086
    goto :goto_19

    .line 1087
    :cond_23
    move-object/from16 v31, v3

    .line 1088
    .line 1089
    const-string v3, "164"

    .line 1090
    .line 1091
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v3

    .line 1095
    if-nez v3, :cond_24

    .line 1096
    .line 1097
    const-string v3, "19"

    .line 1098
    .line 1099
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v3

    .line 1103
    if-nez v3, :cond_24

    .line 1104
    .line 1105
    const/4 v3, 0x1

    .line 1106
    goto :goto_19

    .line 1107
    :cond_24
    :goto_18
    const/4 v3, 0x0

    .line 1108
    :goto_19
    if-eqz v3, :cond_25

    .line 1109
    .line 1110
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    :cond_25
    move-object/from16 v3, v31

    .line 1114
    .line 1115
    :cond_26
    move-object/from16 v5, v32

    .line 1116
    .line 1117
    goto :goto_17

    .line 1118
    :cond_27
    new-instance v5, Ljava/util/ArrayList;

    .line 1119
    .line 1120
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    new-instance v3, Ljava/util/ArrayList;

    .line 1124
    .line 1125
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    move-object/from16 v31, v9

    .line 1129
    .line 1130
    new-instance v9, Ljava/util/ArrayList;

    .line 1131
    .line 1132
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    move-wide/from16 v40, v7

    .line 1136
    .line 1137
    const-string v7, "first_wine_general"

    .line 1138
    .line 1139
    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v8

    .line 1143
    if-nez v8, :cond_29

    .line 1144
    .line 1145
    :cond_28
    move-object/from16 v32, v7

    .line 1146
    .line 1147
    goto :goto_1a

    .line 1148
    :cond_29
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v8

    .line 1152
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v8

    .line 1156
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v32

    .line 1160
    if-nez v32, :cond_28

    .line 1161
    .line 1162
    move-object/from16 v32, v7

    .line 1163
    .line 1164
    const-string v7, "0"

    .line 1165
    .line 1166
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v7

    .line 1170
    if-eqz v7, :cond_2a

    .line 1171
    .line 1172
    goto :goto_1a

    .line 1173
    :cond_2a
    const/4 v7, 0x0

    .line 1174
    goto :goto_1b

    .line 1175
    :goto_1a
    const/4 v7, 0x1

    .line 1176
    :goto_1b
    const-string v8, "first_silver_wine"

    .line 1177
    .line 1178
    invoke-interface {v14, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v8

    .line 1182
    xor-int/lit8 v8, v8, 0x1

    .line 1183
    .line 1184
    invoke-static {v14}, Lcom/sgscq/vpn/handler/x0;->t0(Ljava/util/Map;)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v37

    .line 1188
    xor-int/lit8 v37, v37, 0x1

    .line 1189
    .line 1190
    move-object/from16 v42, v5

    .line 1191
    .line 1192
    iget-object v5, v12, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1193
    .line 1194
    if-nez v5, :cond_2b

    .line 1195
    .line 1196
    const/4 v5, 0x0

    .line 1197
    goto :goto_1c

    .line 1198
    :cond_2b
    iget-object v5, v5, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1199
    .line 1200
    :goto_1c
    move-object/from16 v44, v3

    .line 1201
    .line 1202
    move-object/from16 v43, v4

    .line 1203
    .line 1204
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 1205
    .line 1206
    .line 1207
    move-result-wide v3

    .line 1208
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/l2;->a(Landroid/content/Context;J)Lcom/sgscq/vpn/j2;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    iget-object v3, v3, Lcom/sgscq/vpn/j2;->f:Ljava/lang/String;

    .line 1213
    .line 1214
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1215
    .line 1216
    .line 1217
    move-result v4

    .line 1218
    if-eqz v4, :cond_2c

    .line 1219
    .line 1220
    const/4 v3, 0x0

    .line 1221
    goto :goto_1d

    .line 1222
    :cond_2c
    const-string v4, "limited_gold_soul_first_wine_activity"

    .line 1223
    .line 1224
    invoke-static {v14, v4, v10, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v3

    .line 1228
    :goto_1d
    xor-int/lit8 v3, v3, 0x1

    .line 1229
    .line 1230
    iget-object v4, v12, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1231
    .line 1232
    const/4 v5, 0x0

    .line 1233
    invoke-virtual {v4, v5, v1, v14}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1234
    .line 1235
    .line 1236
    move-result v4

    .line 1237
    move/from16 v45, v4

    .line 1238
    .line 1239
    iget-object v4, v12, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1240
    .line 1241
    invoke-virtual {v4, v5, v0, v14}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1242
    .line 1243
    .line 1244
    move-result v4

    .line 1245
    move-object/from16 v46, v1

    .line 1246
    .line 1247
    move/from16 v47, v3

    .line 1248
    .line 1249
    move-object v1, v12

    .line 1250
    move/from16 v70, v45

    .line 1251
    .line 1252
    move-object/from16 v45, v0

    .line 1253
    .line 1254
    move v0, v5

    .line 1255
    move/from16 v5, v70

    .line 1256
    .line 1257
    :goto_1e
    const-string v3, "id"

    .line 1258
    .line 1259
    const-string v12, "Skill"

    .line 1260
    .line 1261
    move-object/from16 v48, v12

    .line 1262
    .line 1263
    move/from16 v12, v29

    .line 1264
    .line 1265
    if-ge v0, v12, :cond_44

    .line 1266
    .line 1267
    move/from16 v29, v12

    .line 1268
    .line 1269
    const-string v12, "1"

    .line 1270
    .line 1271
    if-eqz v7, :cond_2e

    .line 1272
    .line 1273
    move/from16 v49, v7

    .line 1274
    .line 1275
    const/4 v7, 0x4

    .line 1276
    if-ne v2, v7, :cond_2d

    .line 1277
    .line 1278
    if-nez v0, :cond_2d

    .line 1279
    .line 1280
    sget-object v7, Lcom/sgscq/vpn/w1;->V:[Ljava/lang/String;

    .line 1281
    .line 1282
    move-object/from16 v50, v3

    .line 1283
    .line 1284
    iget-object v3, v1, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 1285
    .line 1286
    move-object/from16 v51, v10

    .line 1287
    .line 1288
    array-length v10, v7

    .line 1289
    invoke-virtual {v3, v10}, Ljava/util/Random;->nextInt(I)I

    .line 1290
    .line 1291
    .line 1292
    move-result v3

    .line 1293
    aget-object v3, v7, v3

    .line 1294
    .line 1295
    const/4 v7, 0x1

    .line 1296
    move/from16 v70, v8

    .line 1297
    .line 1298
    move v8, v7

    .line 1299
    move-object/from16 v7, v43

    .line 1300
    .line 1301
    move/from16 v43, v70

    .line 1302
    .line 1303
    goto/16 :goto_23

    .line 1304
    .line 1305
    :cond_2d
    move-object/from16 v50, v3

    .line 1306
    .line 1307
    goto :goto_1f

    .line 1308
    :cond_2e
    move-object/from16 v50, v3

    .line 1309
    .line 1310
    move/from16 v49, v7

    .line 1311
    .line 1312
    :goto_1f
    move-object/from16 v51, v10

    .line 1313
    .line 1314
    if-eqz v8, :cond_2f

    .line 1315
    .line 1316
    const/4 v3, 0x3

    .line 1317
    if-ne v2, v3, :cond_2f

    .line 1318
    .line 1319
    if-nez v0, :cond_2f

    .line 1320
    .line 1321
    const/4 v3, 0x2

    .line 1322
    move-object/from16 v7, v43

    .line 1323
    .line 1324
    invoke-virtual {v1, v3, v7}, Lcom/sgscq/vpn/handler/x0;->S(ILjava/util/ArrayList;)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v3

    .line 1328
    const-string v10, "first_silver_wine"

    .line 1329
    .line 1330
    invoke-interface {v14, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move/from16 v43, v8

    .line 1334
    .line 1335
    goto/16 :goto_22

    .line 1336
    .line 1337
    :cond_2f
    move-object/from16 v7, v43

    .line 1338
    .line 1339
    const/4 v3, 0x2

    .line 1340
    if-ne v2, v3, :cond_35

    .line 1341
    .line 1342
    if-eqz v37, :cond_33

    .line 1343
    .line 1344
    if-nez v0, :cond_33

    .line 1345
    .line 1346
    new-instance v3, Ljava/util/ArrayList;

    .line 1347
    .line 1348
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .line 1350
    .line 1351
    sget-object v4, Lcom/sgscq/vpn/handler/x0;->f:[Ljava/lang/String;

    .line 1352
    .line 1353
    const/4 v5, 0x4

    .line 1354
    const/4 v10, 0x0

    .line 1355
    :goto_20
    if-ge v10, v5, :cond_31

    .line 1356
    .line 1357
    aget-object v5, v4, v10

    .line 1358
    .line 1359
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1360
    .line 1361
    .line 1362
    move-result v43

    .line 1363
    if-nez v43, :cond_30

    .line 1364
    .line 1365
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    .line 1367
    .line 1368
    :cond_30
    add-int/lit8 v10, v10, 0x1

    .line 1369
    .line 1370
    const/4 v5, 0x4

    .line 1371
    goto :goto_20

    .line 1372
    :cond_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v5

    .line 1376
    if-eqz v5, :cond_32

    .line 1377
    .line 1378
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v4

    .line 1382
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1383
    .line 1384
    .line 1385
    :cond_32
    iget-object v4, v1, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 1386
    .line 1387
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1388
    .line 1389
    .line 1390
    move-result v5

    .line 1391
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 1392
    .line 1393
    .line 1394
    move-result v4

    .line 1395
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    check-cast v3, Ljava/lang/String;

    .line 1400
    .line 1401
    const-string v4, "first_gold_wine"

    .line 1402
    .line 1403
    invoke-interface {v14, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1407
    .line 1408
    const-string v5, "[Wine] First gold - god: "

    .line 1409
    .line 1410
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v4

    .line 1420
    invoke-static {v11, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    .line 1422
    .line 1423
    const/4 v4, 0x1

    .line 1424
    const/4 v5, 0x1

    .line 1425
    const/4 v10, 0x0

    .line 1426
    move/from16 v43, v8

    .line 1427
    .line 1428
    move v8, v4

    .line 1429
    move v4, v5

    .line 1430
    move v5, v10

    .line 1431
    goto :goto_23

    .line 1432
    :cond_33
    add-int/lit8 v5, v5, 0x1

    .line 1433
    .line 1434
    const/4 v3, 0x1

    .line 1435
    if-gt v4, v3, :cond_34

    .line 1436
    .line 1437
    const/4 v10, 0x4

    .line 1438
    goto :goto_21

    .line 1439
    :cond_34
    const/16 v10, 0xa

    .line 1440
    .line 1441
    :goto_21
    rem-int v43, v5, v10

    .line 1442
    .line 1443
    if-nez v43, :cond_35

    .line 1444
    .line 1445
    invoke-virtual {v1, v3, v7}, Lcom/sgscq/vpn/handler/x0;->S(ILjava/util/ArrayList;)Ljava/lang/String;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v3

    .line 1449
    add-int/lit8 v4, v4, 0x1

    .line 1450
    .line 1451
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    move/from16 v43, v8

    .line 1454
    .line 1455
    const-string v8, "[Wine] Guarantee phase="

    .line 1456
    .line 1457
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    .line 1463
    const-string v8, " interval="

    .line 1464
    .line 1465
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    .line 1471
    const-string v8, " god: "

    .line 1472
    .line 1473
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v5

    .line 1483
    invoke-static {v11, v5}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    .line 1485
    .line 1486
    const/4 v5, 0x0

    .line 1487
    goto :goto_22

    .line 1488
    :cond_35
    move/from16 v43, v8

    .line 1489
    .line 1490
    invoke-virtual {v1, v2, v7}, Lcom/sgscq/vpn/handler/x0;->T(ILjava/util/ArrayList;)Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v3

    .line 1494
    :goto_22
    const/4 v8, 0x0

    .line 1495
    :goto_23
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1496
    .line 1497
    .line 1498
    move-result v10

    .line 1499
    move/from16 v52, v4

    .line 1500
    .line 1501
    iget-object v4, v1, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1502
    .line 1503
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1504
    .line 1505
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v4

    .line 1509
    move/from16 v53, v5

    .line 1510
    .line 1511
    invoke-virtual {v4, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v5

    .line 1515
    if-eqz v10, :cond_36

    .line 1516
    .line 1517
    const/16 v4, 0x12

    .line 1518
    .line 1519
    invoke-virtual {v1, v4, v3, v5}, Lcom/sgscq/vpn/handler/x0;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v4

    .line 1523
    move-object/from16 v10, v44

    .line 1524
    .line 1525
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    .line 1530
    .line 1531
    const/16 v4, 0x12

    .line 1532
    .line 1533
    invoke-static {v4, v3, v14}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-static {v3, v14}, Lcom/sgscq/vpn/handler/x0;->d0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v3

    .line 1540
    move-object/from16 v4, v28

    .line 1541
    .line 1542
    invoke-static {v4, v3}, Lcom/sgscq/vpn/handler/x0;->h(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1543
    .line 1544
    .line 1545
    move/from16 v56, v0

    .line 1546
    .line 1547
    move/from16 v28, v2

    .line 1548
    .line 1549
    move-object/from16 v54, v4

    .line 1550
    .line 1551
    move-object v12, v6

    .line 1552
    move-object/from16 v61, v7

    .line 1553
    .line 1554
    move-object/from16 v60, v9

    .line 1555
    .line 1556
    move-object/from16 v9, v18

    .line 1557
    .line 1558
    move-object/from16 v7, v24

    .line 1559
    .line 1560
    move-object/from16 v8, v32

    .line 1561
    .line 1562
    move-object/from16 v6, v38

    .line 1563
    .line 1564
    move-object/from16 v10, v51

    .line 1565
    .line 1566
    move-object/from16 v0, p0

    .line 1567
    .line 1568
    goto/16 :goto_2b

    .line 1569
    .line 1570
    :cond_36
    move-object/from16 v10, v28

    .line 1571
    .line 1572
    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v28

    .line 1576
    move-object/from16 v54, v10

    .line 1577
    .line 1578
    move-object/from16 v10, v28

    .line 1579
    .line 1580
    check-cast v10, Ljava/util/Map;

    .line 1581
    .line 1582
    move/from16 v28, v2

    .line 1583
    .line 1584
    iget-object v2, v1, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1585
    .line 1586
    if-nez v2, :cond_37

    .line 1587
    .line 1588
    const/4 v2, 0x0

    .line 1589
    goto :goto_24

    .line 1590
    :cond_37
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 1591
    .line 1592
    :goto_24
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v2

    .line 1596
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    .line 1597
    .line 1598
    .line 1599
    move-result v55

    .line 1600
    if-nez v55, :cond_38

    .line 1601
    .line 1602
    invoke-virtual {v2, v14}, Lcom/sgscq/vpn/w1;->D(Ljava/util/Map;)I

    .line 1603
    .line 1604
    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1606
    .line 1607
    const-string v10, "[Wine] skip non-surrenderable general reward general_id="

    .line 1608
    .line 1609
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v2

    .line 1619
    invoke-static {v11, v2}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .line 1621
    .line 1622
    const/4 v2, 0x0

    .line 1623
    move/from16 v56, v0

    .line 1624
    .line 1625
    move-object/from16 v58, v4

    .line 1626
    .line 1627
    move-object/from16 v57, v5

    .line 1628
    .line 1629
    move-object/from16 v61, v7

    .line 1630
    .line 1631
    move/from16 v50, v8

    .line 1632
    .line 1633
    move-object/from16 v60, v9

    .line 1634
    .line 1635
    move-object/from16 v7, v24

    .line 1636
    .line 1637
    move-object/from16 v0, p0

    .line 1638
    .line 1639
    move-object v4, v2

    .line 1640
    move-object v2, v1

    .line 1641
    move-object/from16 v1, v48

    .line 1642
    .line 1643
    move-object/from16 v70, v51

    .line 1644
    .line 1645
    move-object/from16 v51, v6

    .line 1646
    .line 1647
    move-object/from16 v6, v38

    .line 1648
    .line 1649
    move-object/from16 v38, v70

    .line 1650
    .line 1651
    goto/16 :goto_27

    .line 1652
    .line 1653
    :cond_38
    move-object/from16 v55, v1

    .line 1654
    .line 1655
    const-string v1, "general_naturalskill_id"

    .line 1656
    .line 1657
    move/from16 v56, v0

    .line 1658
    .line 1659
    const-string v0, "status"

    .line 1660
    .line 1661
    move-object/from16 v57, v5

    .line 1662
    .line 1663
    const-string v5, "general_status"

    .line 1664
    .line 1665
    move-object/from16 v58, v4

    .line 1666
    .line 1667
    const-string v4, "general_pk_id"

    .line 1668
    .line 1669
    if-eqz v10, :cond_3b

    .line 1670
    .line 1671
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v59

    .line 1675
    check-cast v59, Ljava/util/List;

    .line 1676
    .line 1677
    if-eqz v59, :cond_3b

    .line 1678
    .line 1679
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v59

    .line 1683
    :goto_25
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->hasNext()Z

    .line 1684
    .line 1685
    .line 1686
    move-result v60

    .line 1687
    if-eqz v60, :cond_3b

    .line 1688
    .line 1689
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v60

    .line 1693
    move-object/from16 v61, v7

    .line 1694
    .line 1695
    move-object/from16 v7, v60

    .line 1696
    .line 1697
    check-cast v7, Ljava/util/Map;

    .line 1698
    .line 1699
    move-object/from16 v60, v9

    .line 1700
    .line 1701
    move-object/from16 v9, v51

    .line 1702
    .line 1703
    move-object/from16 v70, v50

    .line 1704
    .line 1705
    move/from16 v50, v8

    .line 1706
    .line 1707
    move-object/from16 v8, v70

    .line 1708
    .line 1709
    invoke-static {v7, v8, v9, v13, v3}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1710
    .line 1711
    .line 1712
    move-result v51

    .line 1713
    if-eqz v51, :cond_3a

    .line 1714
    .line 1715
    move-object/from16 v51, v6

    .line 1716
    .line 1717
    move-object/from16 v6, v38

    .line 1718
    .line 1719
    invoke-interface {v7, v6, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v8

    .line 1723
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v8

    .line 1727
    invoke-interface {v7, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    .line 1729
    .line 1730
    invoke-interface {v7, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 1734
    .line 1735
    .line 1736
    move-result-object v0

    .line 1737
    if-eqz v0, :cond_39

    .line 1738
    .line 1739
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 1740
    .line 1741
    .line 1742
    move-result-object v0

    .line 1743
    array-length v0, v0

    .line 1744
    const/16 v5, 0xa

    .line 1745
    .line 1746
    if-le v0, v5, :cond_39

    .line 1747
    .line 1748
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    move-object/from16 v38, v9

    .line 1753
    .line 1754
    aget-wide v9, v0, v5

    .line 1755
    .line 1756
    double-to-int v0, v9

    .line 1757
    goto :goto_26

    .line 1758
    :cond_39
    move-object/from16 v38, v9

    .line 1759
    .line 1760
    const/4 v0, 0x1

    .line 1761
    :goto_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v0

    .line 1765
    const-string v5, "grade"

    .line 1766
    .line 1767
    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    .line 1769
    .line 1770
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    .line 1772
    .line 1773
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    .line 1775
    .line 1776
    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    invoke-virtual {v2, v8, v7}, Lcom/sgscq/vpn/w1;->t2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1780
    .line 1781
    .line 1782
    move-object/from16 v0, p0

    .line 1783
    .line 1784
    move-object v4, v7

    .line 1785
    move-object/from16 v7, v24

    .line 1786
    .line 1787
    move-object/from16 v1, v48

    .line 1788
    .line 1789
    move-object/from16 v2, v55

    .line 1790
    .line 1791
    goto/16 :goto_27

    .line 1792
    .line 1793
    :cond_3a
    move-object/from16 v51, v6

    .line 1794
    .line 1795
    move-object/from16 v6, v38

    .line 1796
    .line 1797
    move-object/from16 v6, v51

    .line 1798
    .line 1799
    move-object/from16 v7, v61

    .line 1800
    .line 1801
    move-object/from16 v51, v9

    .line 1802
    .line 1803
    move-object/from16 v9, v60

    .line 1804
    .line 1805
    move/from16 v70, v50

    .line 1806
    .line 1807
    move-object/from16 v50, v8

    .line 1808
    .line 1809
    move/from16 v8, v70

    .line 1810
    .line 1811
    goto/16 :goto_25

    .line 1812
    .line 1813
    :cond_3b
    move-object/from16 v61, v7

    .line 1814
    .line 1815
    move-object/from16 v60, v9

    .line 1816
    .line 1817
    move-object/from16 v70, v51

    .line 1818
    .line 1819
    move-object/from16 v51, v6

    .line 1820
    .line 1821
    move-object/from16 v6, v38

    .line 1822
    .line 1823
    move-object/from16 v38, v70

    .line 1824
    .line 1825
    move-object/from16 v71, v50

    .line 1826
    .line 1827
    move/from16 v50, v8

    .line 1828
    .line 1829
    move-object/from16 v8, v71

    .line 1830
    .line 1831
    invoke-static {v14}, Lcom/sgscq/vpn/w1;->d2(Ljava/util/Map;)Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v7

    .line 1835
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->Y1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v9

    .line 1839
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    .line 1841
    .line 1842
    invoke-virtual {v9, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual {v9, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {v9, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    .line 1850
    .line 1851
    invoke-virtual {v9, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    .line 1853
    .line 1854
    invoke-virtual {v2, v7, v9}, Lcom/sgscq/vpn/w1;->t2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1855
    .line 1856
    .line 1857
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->Z1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v0

    .line 1861
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    .line 1866
    .line 1867
    if-eqz v10, :cond_3d

    .line 1868
    .line 1869
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v1

    .line 1873
    check-cast v1, Ljava/util/List;

    .line 1874
    .line 1875
    if-nez v1, :cond_3c

    .line 1876
    .line 1877
    invoke-static {v10, v15}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v1

    .line 1881
    :cond_3c
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1882
    .line 1883
    .line 1884
    :cond_3d
    move-object/from16 v1, v48

    .line 1885
    .line 1886
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v5

    .line 1890
    check-cast v5, Ljava/util/Map;

    .line 1891
    .line 1892
    if-eqz v5, :cond_3f

    .line 1893
    .line 1894
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v9

    .line 1898
    check-cast v9, Ljava/util/List;

    .line 1899
    .line 1900
    if-nez v9, :cond_3e

    .line 1901
    .line 1902
    invoke-static {v5, v15}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v9

    .line 1906
    :cond_3e
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    .line 1908
    .line 1909
    :cond_3f
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v0

    .line 1913
    const/4 v5, 0x0

    .line 1914
    invoke-static {v13, v3, v5, v14}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1915
    .line 1916
    .line 1917
    const-string v9, "skill_id"

    .line 1918
    .line 1919
    invoke-static {v9, v0, v5, v14}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v0

    .line 1926
    invoke-static {v6, v7, v4, v7}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v2

    .line 1930
    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    .line 1935
    .line 1936
    const-string v4, "general_name"

    .line 1937
    .line 1938
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v0

    .line 1942
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    const-string v0, "card_type"

    .line 1946
    .line 1947
    move-object/from16 v7, v24

    .line 1948
    .line 1949
    invoke-virtual {v2, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    .line 1951
    .line 1952
    const-string v0, "num"

    .line 1953
    .line 1954
    invoke-virtual {v2, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    .line 1956
    .line 1957
    move-object/from16 v0, p0

    .line 1958
    .line 1959
    invoke-virtual {v0, v3, v2}, Lcom/sgscq/vpn/handler/x0;->X(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1960
    .line 1961
    .line 1962
    move-object v4, v2

    .line 1963
    move-object v2, v0

    .line 1964
    :goto_27
    if-nez v4, :cond_40

    .line 1965
    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1967
    .line 1968
    const-string v4, "[Wine] skip non-surrenderable draw result: "

    .line 1969
    .line 1970
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    .line 1975
    .line 1976
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v1

    .line 1980
    invoke-static {v11, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    .line 1982
    .line 1983
    move-object/from16 v9, v18

    .line 1984
    .line 1985
    move-object/from16 v8, v32

    .line 1986
    .line 1987
    move-object/from16 v10, v38

    .line 1988
    .line 1989
    move-object/from16 v12, v51

    .line 1990
    .line 1991
    goto/16 :goto_2a

    .line 1992
    .line 1993
    :cond_40
    move-object/from16 v9, v42

    .line 1994
    .line 1995
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    .line 1997
    .line 1998
    move-object/from16 v10, v38

    .line 1999
    .line 2000
    invoke-interface {v4, v6, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v5

    .line 2004
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v5

    .line 2008
    move-object/from16 v12, v51

    .line 2009
    .line 2010
    invoke-static {v12, v5, v14}, Lcom/sgscq/vpn/handler/x0;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v8

    .line 2014
    move-object/from16 v9, v18

    .line 2015
    .line 2016
    invoke-static {v9, v8}, Lcom/sgscq/vpn/handler/x0;->h(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 2017
    .line 2018
    .line 2019
    invoke-static {v1, v5, v14}, Lcom/sgscq/vpn/handler/x0;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v1

    .line 2023
    move-object/from16 v5, v19

    .line 2024
    .line 2025
    invoke-static {v5, v1}, Lcom/sgscq/vpn/handler/x0;->h(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 2026
    .line 2027
    .line 2028
    if-eqz v50, :cond_41

    .line 2029
    .line 2030
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v1

    .line 2034
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v1

    .line 2038
    move-object/from16 v8, v32

    .line 2039
    .line 2040
    invoke-interface {v14, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    .line 2042
    .line 2043
    goto :goto_28

    .line 2044
    :cond_41
    move-object/from16 v8, v32

    .line 2045
    .line 2046
    :goto_28
    move-object/from16 v1, v60

    .line 2047
    .line 2048
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    .line 2050
    .line 2051
    move-object/from16 v4, v61

    .line 2052
    .line 2053
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2054
    .line 2055
    .line 2056
    move-object/from16 v60, v1

    .line 2057
    .line 2058
    iget-object v1, v2, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2059
    .line 2060
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2061
    .line 2062
    if-eqz v1, :cond_43

    .line 2063
    .line 2064
    move-object/from16 v1, v58

    .line 2065
    .line 2066
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 2067
    .line 2068
    .line 2069
    move-result-object v1

    .line 2070
    if-eqz v1, :cond_43

    .line 2071
    .line 2072
    array-length v3, v1

    .line 2073
    move-object/from16 v61, v4

    .line 2074
    .line 2075
    const/16 v4, 0xa

    .line 2076
    .line 2077
    if-le v3, v4, :cond_42

    .line 2078
    .line 2079
    aget-wide v3, v1, v4

    .line 2080
    .line 2081
    double-to-int v1, v3

    .line 2082
    const/4 v3, 0x1

    .line 2083
    if-ne v1, v3, :cond_42

    .line 2084
    .line 2085
    invoke-static {v14}, Lcom/sgscq/vpn/handler/x0;->G0(Ljava/util/Map;)Ljava/lang/String;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v1

    .line 2089
    const-string v3, "\u5f00\u542f\u91d1\u676f\u83b7\u5f97\u4e86"

    .line 2090
    .line 2091
    const-string v4, "\uff0c\u77ac\u95f4\u6218\u6597\u529b\u5927\u589e\u3002"

    .line 2092
    .line 2093
    move-object/from16 v19, v5

    .line 2094
    .line 2095
    move-object/from16 v5, v57

    .line 2096
    .line 2097
    invoke-static {v3, v5, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v3

    .line 2101
    iget-object v4, v2, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2102
    .line 2103
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2104
    .line 2105
    invoke-virtual {v4, v1, v3}, Lcom/sgscq/vpn/h5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    .line 2107
    .line 2108
    goto :goto_2a

    .line 2109
    :cond_42
    :goto_29
    move-object/from16 v19, v5

    .line 2110
    .line 2111
    :goto_2a
    move-object v1, v2

    .line 2112
    goto :goto_2b

    .line 2113
    :cond_43
    move-object/from16 v61, v4

    .line 2114
    .line 2115
    goto :goto_29

    .line 2116
    :goto_2b
    add-int/lit8 v2, v56, 0x1

    .line 2117
    .line 2118
    move-object/from16 v38, v6

    .line 2119
    .line 2120
    move-object/from16 v24, v7

    .line 2121
    .line 2122
    move-object/from16 v32, v8

    .line 2123
    .line 2124
    move-object/from16 v18, v9

    .line 2125
    .line 2126
    move-object v6, v12

    .line 2127
    move/from16 v8, v43

    .line 2128
    .line 2129
    move/from16 v7, v49

    .line 2130
    .line 2131
    move/from16 v4, v52

    .line 2132
    .line 2133
    move/from16 v5, v53

    .line 2134
    .line 2135
    move-object/from16 v9, v60

    .line 2136
    .line 2137
    move-object/from16 v43, v61

    .line 2138
    .line 2139
    move-object v12, v0

    .line 2140
    move v0, v2

    .line 2141
    move/from16 v2, v28

    .line 2142
    .line 2143
    move-object/from16 v28, v54

    .line 2144
    .line 2145
    goto/16 :goto_1e

    .line 2146
    .line 2147
    :cond_44
    move-object/from16 v0, p0

    .line 2148
    .line 2149
    move-object/from16 v55, v1

    .line 2150
    .line 2151
    move-object v8, v3

    .line 2152
    move/from16 v29, v12

    .line 2153
    .line 2154
    move-object/from16 v54, v28

    .line 2155
    .line 2156
    move-object/from16 v1, v48

    .line 2157
    .line 2158
    move/from16 v28, v2

    .line 2159
    .line 2160
    move-object v12, v6

    .line 2161
    move-object/from16 v2, v19

    .line 2162
    .line 2163
    move-object/from16 v70, v18

    .line 2164
    .line 2165
    move-object/from16 v18, v9

    .line 2166
    .line 2167
    move-object/from16 v9, v70

    .line 2168
    .line 2169
    new-instance v7, Ljava/util/ArrayList;

    .line 2170
    .line 2171
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2172
    .line 2173
    .line 2174
    const/4 v3, 0x2

    .line 2175
    move/from16 v6, v28

    .line 2176
    .line 2177
    if-ne v6, v3, :cond_67

    .line 2178
    .line 2179
    move-object/from16 v19, v2

    .line 2180
    .line 2181
    move-object/from16 v3, v55

    .line 2182
    .line 2183
    iget-object v2, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2184
    .line 2185
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 2186
    .line 2187
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v2

    .line 2191
    move-object/from16 v24, v11

    .line 2192
    .line 2193
    const/4 v11, 0x6

    .line 2194
    new-array v11, v11, [I

    .line 2195
    .line 2196
    fill-array-data v11, :array_0

    .line 2197
    .line 2198
    .line 2199
    move-object/from16 v38, v15

    .line 2200
    .line 2201
    const/4 v15, 0x5

    .line 2202
    const/4 v0, 0x0

    .line 2203
    move-object/from16 v48, v1

    .line 2204
    .line 2205
    const/4 v1, 0x4

    .line 2206
    filled-new-array {v0, v1, v15}, [I

    .line 2207
    .line 2208
    .line 2209
    move-result-object v0

    .line 2210
    const/4 v1, 0x3

    .line 2211
    const/4 v15, 0x1

    .line 2212
    move/from16 v28, v4

    .line 2213
    .line 2214
    const/4 v4, 0x2

    .line 2215
    filled-new-array {v15, v4, v1}, [I

    .line 2216
    .line 2217
    .line 2218
    move-result-object v4

    .line 2219
    new-array v1, v1, [D

    .line 2220
    .line 2221
    fill-array-data v1, :array_1

    .line 2222
    .line 2223
    .line 2224
    const/4 v15, 0x6

    .line 2225
    move/from16 v32, v5

    .line 2226
    .line 2227
    new-array v5, v15, [I

    .line 2228
    .line 2229
    fill-array-data v5, :array_2

    .line 2230
    .line 2231
    .line 2232
    const/16 v37, 0x0

    .line 2233
    .line 2234
    const/16 v43, 0x0

    .line 2235
    .line 2236
    move-object/from16 v50, v8

    .line 2237
    .line 2238
    move/from16 v8, v43

    .line 2239
    .line 2240
    move/from16 v70, v37

    .line 2241
    .line 2242
    move/from16 v37, v6

    .line 2243
    .line 2244
    move/from16 v6, v70

    .line 2245
    .line 2246
    :goto_2c
    if-ge v8, v15, :cond_45

    .line 2247
    .line 2248
    aget v15, v5, v8

    .line 2249
    .line 2250
    add-int/2addr v6, v15

    .line 2251
    add-int/lit8 v8, v8, 0x1

    .line 2252
    .line 2253
    const/4 v15, 0x6

    .line 2254
    goto :goto_2c

    .line 2255
    :cond_45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2256
    .line 2257
    .line 2258
    sget-boolean v8, Lcom/sgscq/vpn/c7;->i:Z

    .line 2259
    .line 2260
    if-eqz v8, :cond_46

    .line 2261
    .line 2262
    const/4 v8, 0x0

    .line 2263
    move-object v15, v9

    .line 2264
    move-object/from16 v51, v12

    .line 2265
    .line 2266
    goto :goto_2d

    .line 2267
    :cond_46
    move-object v15, v9

    .line 2268
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 2269
    .line 2270
    .line 2271
    move-result-wide v8

    .line 2272
    move-object/from16 v51, v12

    .line 2273
    .line 2274
    const/4 v12, 0x0

    .line 2275
    invoke-virtual {v2, v8, v9, v12}, Lcom/sgscq/vpn/w1;->f1(JLjava/util/Set;)Ljava/util/Map;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v8

    .line 2279
    :goto_2d
    if-eqz v8, :cond_47

    .line 2280
    .line 2281
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v9

    .line 2285
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v9

    .line 2289
    const-string v12, "general_name"

    .line 2290
    .line 2291
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v8

    .line 2295
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v8

    .line 2299
    goto :goto_2e

    .line 2300
    :cond_47
    const/4 v8, 0x0

    .line 2301
    const/4 v9, 0x0

    .line 2302
    :goto_2e
    if-eqz v36, :cond_48

    .line 2303
    .line 2304
    move/from16 v12, v29

    .line 2305
    .line 2306
    goto :goto_2f

    .line 2307
    :cond_48
    const/4 v12, 0x1

    .line 2308
    :goto_2f
    if-eqz v36, :cond_49

    .line 2309
    .line 2310
    move-object/from16 v23, v8

    .line 2311
    .line 2312
    move-object/from16 v29, v10

    .line 2313
    .line 2314
    move-object/from16 v47, v15

    .line 2315
    .line 2316
    const/4 v15, -0x1

    .line 2317
    goto :goto_31

    .line 2318
    :cond_49
    if-eqz v47, :cond_4a

    .line 2319
    .line 2320
    const/16 v23, 0x0

    .line 2321
    .line 2322
    move-object/from16 v29, v10

    .line 2323
    .line 2324
    move-object/from16 v47, v15

    .line 2325
    .line 2326
    move/from16 v15, v23

    .line 2327
    .line 2328
    move-object/from16 v23, v8

    .line 2329
    .line 2330
    goto :goto_31

    .line 2331
    :cond_4a
    move-object/from16 v23, v8

    .line 2332
    .line 2333
    iget-object v8, v3, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 2334
    .line 2335
    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    .line 2336
    .line 2337
    .line 2338
    move-result v8

    .line 2339
    const/16 v29, 0x6

    .line 2340
    .line 2341
    const/16 v43, 0x0

    .line 2342
    .line 2343
    const/16 v44, 0x0

    .line 2344
    .line 2345
    move-object/from16 v47, v15

    .line 2346
    .line 2347
    move/from16 v15, v43

    .line 2348
    .line 2349
    move/from16 v70, v29

    .line 2350
    .line 2351
    move-object/from16 v29, v10

    .line 2352
    .line 2353
    move/from16 v10, v70

    .line 2354
    .line 2355
    :goto_30
    if-ge v15, v10, :cond_4c

    .line 2356
    .line 2357
    aget v10, v5, v15

    .line 2358
    .line 2359
    add-int v10, v44, v10

    .line 2360
    .line 2361
    if-ge v8, v10, :cond_4b

    .line 2362
    .line 2363
    goto :goto_31

    .line 2364
    :cond_4b
    add-int/lit8 v15, v15, 0x1

    .line 2365
    .line 2366
    const/16 v43, 0x6

    .line 2367
    .line 2368
    move/from16 v44, v10

    .line 2369
    .line 2370
    move/from16 v10, v43

    .line 2371
    .line 2372
    goto :goto_30

    .line 2373
    :cond_4c
    const/4 v8, 0x5

    .line 2374
    move v15, v8

    .line 2375
    :goto_31
    const-string v8, "status"

    .line 2376
    .line 2377
    if-nez v36, :cond_54

    .line 2378
    .line 2379
    invoke-virtual {v3, v9, v0, v4, v1}, Lcom/sgscq/vpn/handler/x0;->s(Ljava/lang/String;[I[I[D)[Z

    .line 2380
    .line 2381
    .line 2382
    move-result-object v0

    .line 2383
    const/4 v1, 0x0

    .line 2384
    :goto_32
    const/4 v4, 0x6

    .line 2385
    if-ge v1, v4, :cond_53

    .line 2386
    .line 2387
    aget-boolean v4, v0, v1

    .line 2388
    .line 2389
    if-eqz v4, :cond_4d

    .line 2390
    .line 2391
    move-object v4, v9

    .line 2392
    goto :goto_33

    .line 2393
    :cond_4d
    invoke-virtual {v3, v1, v2, v9}, Lcom/sgscq/vpn/handler/x0;->F0(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v4

    .line 2397
    :goto_33
    aget-boolean v5, v0, v1

    .line 2398
    .line 2399
    if-eqz v5, :cond_4e

    .line 2400
    .line 2401
    move-object/from16 v5, v23

    .line 2402
    .line 2403
    goto :goto_34

    .line 2404
    :cond_4e
    invoke-virtual {v2, v4}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 2405
    .line 2406
    .line 2407
    move-result-object v5

    .line 2408
    :goto_34
    if-eqz v5, :cond_4f

    .line 2409
    .line 2410
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 2411
    .line 2412
    .line 2413
    move-result v6

    .line 2414
    if-eqz v6, :cond_50

    .line 2415
    .line 2416
    :cond_4f
    move-object v5, v4

    .line 2417
    :cond_50
    aget v6, v11, v1

    .line 2418
    .line 2419
    invoke-virtual {v3, v6, v4, v5}, Lcom/sgscq/vpn/handler/x0;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v5

    .line 2423
    if-ne v1, v15, :cond_51

    .line 2424
    .line 2425
    const/4 v6, 0x1

    .line 2426
    goto :goto_35

    .line 2427
    :cond_51
    const/4 v6, 0x0

    .line 2428
    :goto_35
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v10

    .line 2432
    invoke-virtual {v5, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    .line 2434
    .line 2435
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2436
    .line 2437
    .line 2438
    if-eqz v6, :cond_52

    .line 2439
    .line 2440
    aget v5, v11, v1

    .line 2441
    .line 2442
    invoke-static {v5, v4, v14}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 2443
    .line 2444
    .line 2445
    :cond_52
    add-int/lit8 v1, v1, 0x1

    .line 2446
    .line 2447
    goto :goto_32

    .line 2448
    :cond_53
    move-object/from16 v49, v13

    .line 2449
    .line 2450
    goto/16 :goto_3f

    .line 2451
    .line 2452
    :cond_54
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 2453
    .line 2454
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2455
    .line 2456
    .line 2457
    move/from16 v43, v15

    .line 2458
    .line 2459
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 2460
    .line 2461
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2462
    .line 2463
    .line 2464
    const/16 v44, 0x0

    .line 2465
    .line 2466
    move-object/from16 v49, v13

    .line 2467
    .line 2468
    move/from16 v13, v44

    .line 2469
    .line 2470
    :goto_36
    if-ge v13, v12, :cond_5e

    .line 2471
    .line 2472
    invoke-virtual {v3, v9, v0, v4, v1}, Lcom/sgscq/vpn/handler/x0;->s(Ljava/lang/String;[I[I[D)[Z

    .line 2473
    .line 2474
    .line 2475
    move-result-object v44

    .line 2476
    move-object/from16 v52, v0

    .line 2477
    .line 2478
    const/4 v0, 0x1

    .line 2479
    if-ne v12, v0, :cond_55

    .line 2480
    .line 2481
    move-object/from16 v57, v1

    .line 2482
    .line 2483
    move-object/from16 v53, v4

    .line 2484
    .line 2485
    move/from16 v1, v43

    .line 2486
    .line 2487
    goto :goto_38

    .line 2488
    :cond_55
    iget-object v0, v3, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    .line 2489
    .line 2490
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    .line 2491
    .line 2492
    .line 2493
    move-result v0

    .line 2494
    const/16 v53, 0x0

    .line 2495
    .line 2496
    const/16 v55, 0x6

    .line 2497
    .line 2498
    const/16 v56, 0x0

    .line 2499
    .line 2500
    move-object/from16 v57, v1

    .line 2501
    .line 2502
    move/from16 v1, v53

    .line 2503
    .line 2504
    move-object/from16 v53, v4

    .line 2505
    .line 2506
    :goto_37
    move/from16 v4, v55

    .line 2507
    .line 2508
    if-ge v1, v4, :cond_57

    .line 2509
    .line 2510
    aget v4, v5, v1

    .line 2511
    .line 2512
    add-int v4, v56, v4

    .line 2513
    .line 2514
    if-ge v0, v4, :cond_56

    .line 2515
    .line 2516
    goto :goto_38

    .line 2517
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 2518
    .line 2519
    const/16 v55, 0x6

    .line 2520
    .line 2521
    move/from16 v56, v4

    .line 2522
    .line 2523
    goto :goto_37

    .line 2524
    :cond_57
    const/4 v1, 0x5

    .line 2525
    :goto_38
    aget-boolean v0, v44, v1

    .line 2526
    .line 2527
    if-eqz v0, :cond_58

    .line 2528
    .line 2529
    move-object v0, v9

    .line 2530
    goto :goto_39

    .line 2531
    :cond_58
    invoke-virtual {v3, v1, v2, v9}, Lcom/sgscq/vpn/handler/x0;->F0(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/lang/String;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v0

    .line 2535
    :goto_39
    aget-boolean v4, v44, v1

    .line 2536
    .line 2537
    if-eqz v4, :cond_59

    .line 2538
    .line 2539
    move-object/from16 v4, v23

    .line 2540
    .line 2541
    goto :goto_3a

    .line 2542
    :cond_59
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 2543
    .line 2544
    .line 2545
    move-result-object v4

    .line 2546
    :goto_3a
    if-eqz v4, :cond_5a

    .line 2547
    .line 2548
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 2549
    .line 2550
    .line 2551
    move-result v44

    .line 2552
    if-eqz v44, :cond_5b

    .line 2553
    .line 2554
    :cond_5a
    move-object v4, v0

    .line 2555
    :cond_5b
    aget v1, v11, v1

    .line 2556
    .line 2557
    invoke-static {v1, v0, v14}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 2558
    .line 2559
    .line 2560
    if-eqz v36, :cond_5d

    .line 2561
    .line 2562
    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2563
    .line 2564
    .line 2565
    move-result-object v44

    .line 2566
    check-cast v44, Ljava/lang/Integer;

    .line 2567
    .line 2568
    if-nez v44, :cond_5c

    .line 2569
    .line 2570
    const/16 v44, 0x0

    .line 2571
    .line 2572
    goto :goto_3b

    .line 2573
    :cond_5c
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    .line 2574
    .line 2575
    .line 2576
    move-result v44

    .line 2577
    :goto_3b
    add-int v44, v44, v1

    .line 2578
    .line 2579
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v1

    .line 2583
    invoke-virtual {v10, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    .line 2585
    .line 2586
    invoke-virtual {v15, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 2587
    .line 2588
    .line 2589
    move-result v1

    .line 2590
    if-nez v1, :cond_5d

    .line 2591
    .line 2592
    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    .line 2594
    .line 2595
    :cond_5d
    add-int/lit8 v13, v13, 0x1

    .line 2596
    .line 2597
    move-object/from16 v0, v52

    .line 2598
    .line 2599
    move-object/from16 v4, v53

    .line 2600
    .line 2601
    move-object/from16 v1, v57

    .line 2602
    .line 2603
    goto/16 :goto_36

    .line 2604
    .line 2605
    :cond_5e
    if-eqz v36, :cond_64

    .line 2606
    .line 2607
    new-instance v0, Ljava/util/ArrayList;

    .line 2608
    .line 2609
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2610
    .line 2611
    .line 2612
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2613
    .line 2614
    .line 2615
    move-result-object v1

    .line 2616
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2617
    .line 2618
    .line 2619
    move-result-object v1

    .line 2620
    const/4 v2, 0x0

    .line 2621
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2622
    .line 2623
    .line 2624
    move-result v4

    .line 2625
    if-eqz v4, :cond_60

    .line 2626
    .line 2627
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v4

    .line 2631
    check-cast v4, Ljava/util/Map$Entry;

    .line 2632
    .line 2633
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v5

    .line 2637
    check-cast v5, Ljava/lang/String;

    .line 2638
    .line 2639
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2640
    .line 2641
    .line 2642
    move-result v5

    .line 2643
    if-eqz v5, :cond_5f

    .line 2644
    .line 2645
    move-object v2, v4

    .line 2646
    goto :goto_3c

    .line 2647
    :cond_5f
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2648
    .line 2649
    .line 2650
    goto :goto_3c

    .line 2651
    :cond_60
    new-instance v1, Ln/b;

    .line 2652
    .line 2653
    const/16 v4, 0xd

    .line 2654
    .line 2655
    invoke-direct {v1, v4}, Ln/b;-><init>(I)V

    .line 2656
    .line 2657
    .line 2658
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2659
    .line 2660
    .line 2661
    new-instance v1, Ljava/util/ArrayList;

    .line 2662
    .line 2663
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2664
    .line 2665
    .line 2666
    if-eqz v2, :cond_61

    .line 2667
    .line 2668
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2669
    .line 2670
    .line 2671
    :cond_61
    const/4 v2, 0x0

    .line 2672
    :goto_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2673
    .line 2674
    .line 2675
    move-result v4

    .line 2676
    const/4 v5, 0x5

    .line 2677
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 2678
    .line 2679
    .line 2680
    move-result v4

    .line 2681
    if-ge v2, v4, :cond_62

    .line 2682
    .line 2683
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2684
    .line 2685
    .line 2686
    move-result-object v4

    .line 2687
    check-cast v4, Ljava/util/Map$Entry;

    .line 2688
    .line 2689
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    .line 2691
    .line 2692
    add-int/lit8 v2, v2, 0x1

    .line 2693
    .line 2694
    goto :goto_3d

    .line 2695
    :cond_62
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v0

    .line 2699
    const/4 v1, 0x1

    .line 2700
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2701
    .line 2702
    .line 2703
    move-result v2

    .line 2704
    if-eqz v2, :cond_64

    .line 2705
    .line 2706
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2707
    .line 2708
    .line 2709
    move-result-object v2

    .line 2710
    check-cast v2, Ljava/util/Map$Entry;

    .line 2711
    .line 2712
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2713
    .line 2714
    .line 2715
    move-result-object v4

    .line 2716
    check-cast v4, Ljava/lang/String;

    .line 2717
    .line 2718
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2719
    .line 2720
    .line 2721
    move-result-object v2

    .line 2722
    check-cast v2, Ljava/lang/Integer;

    .line 2723
    .line 2724
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2725
    .line 2726
    .line 2727
    move-result v2

    .line 2728
    invoke-virtual {v15, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    .line 2730
    .line 2731
    move-result-object v5

    .line 2732
    check-cast v5, Ljava/lang/String;

    .line 2733
    .line 2734
    invoke-virtual {v3, v2, v4, v5}, Lcom/sgscq/vpn/handler/x0;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 2735
    .line 2736
    .line 2737
    move-result-object v2

    .line 2738
    if-eqz v1, :cond_63

    .line 2739
    .line 2740
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2741
    .line 2742
    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2743
    .line 2744
    .line 2745
    const/4 v1, 0x0

    .line 2746
    :cond_63
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2747
    .line 2748
    .line 2749
    goto :goto_3e

    .line 2750
    :cond_64
    :goto_3f
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 2751
    .line 2752
    if-nez v0, :cond_65

    .line 2753
    .line 2754
    iget-object v0, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2755
    .line 2756
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 2757
    .line 2758
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 2759
    .line 2760
    .line 2761
    move-result-wide v1

    .line 2762
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/l2;->a(Landroid/content/Context;J)Lcom/sgscq/vpn/j2;

    .line 2763
    .line 2764
    .line 2765
    move-result-object v0

    .line 2766
    iget-object v0, v0, Lcom/sgscq/vpn/j2;->f:Ljava/lang/String;

    .line 2767
    .line 2768
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2769
    .line 2770
    .line 2771
    move-result v1

    .line 2772
    if-nez v1, :cond_65

    .line 2773
    .line 2774
    const-string v1, "limited_gold_soul_first_wine_activity"

    .line 2775
    .line 2776
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2777
    .line 2778
    .line 2779
    :cond_65
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2780
    .line 2781
    .line 2782
    move-result-object v0

    .line 2783
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2784
    .line 2785
    .line 2786
    move-result v1

    .line 2787
    if-eqz v1, :cond_66

    .line 2788
    .line 2789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2790
    .line 2791
    .line 2792
    move-result-object v1

    .line 2793
    check-cast v1, Ljava/util/Map;

    .line 2794
    .line 2795
    move-object/from16 v2, v29

    .line 2796
    .line 2797
    move-object/from16 v12, v49

    .line 2798
    .line 2799
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2800
    .line 2801
    .line 2802
    move-result-object v1

    .line 2803
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v1

    .line 2807
    invoke-static {v1, v14}, Lcom/sgscq/vpn/handler/x0;->d0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 2808
    .line 2809
    .line 2810
    move-result-object v1

    .line 2811
    move-object/from16 v8, v54

    .line 2812
    .line 2813
    invoke-static {v8, v1}, Lcom/sgscq/vpn/handler/x0;->h(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 2814
    .line 2815
    .line 2816
    goto :goto_40

    .line 2817
    :cond_66
    move-object/from16 v2, v29

    .line 2818
    .line 2819
    move-object/from16 v12, v49

    .line 2820
    .line 2821
    move-object/from16 v8, v54

    .line 2822
    .line 2823
    goto :goto_41

    .line 2824
    :cond_67
    move-object/from16 v48, v1

    .line 2825
    .line 2826
    move-object/from16 v19, v2

    .line 2827
    .line 2828
    move/from16 v28, v4

    .line 2829
    .line 2830
    move/from16 v32, v5

    .line 2831
    .line 2832
    move/from16 v37, v6

    .line 2833
    .line 2834
    move-object/from16 v50, v8

    .line 2835
    .line 2836
    move-object/from16 v47, v9

    .line 2837
    .line 2838
    move-object v2, v10

    .line 2839
    move-object/from16 v24, v11

    .line 2840
    .line 2841
    move-object/from16 v51, v12

    .line 2842
    .line 2843
    move-object v12, v13

    .line 2844
    move-object/from16 v38, v15

    .line 2845
    .line 2846
    move-object/from16 v8, v54

    .line 2847
    .line 2848
    move-object/from16 v3, v55

    .line 2849
    .line 2850
    :goto_41
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2851
    .line 2852
    .line 2853
    move-result v0

    .line 2854
    if-nez v0, :cond_6f

    .line 2855
    .line 2856
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2857
    .line 2858
    .line 2859
    move-result v0

    .line 2860
    if-nez v0, :cond_68

    .line 2861
    .line 2862
    goto/16 :goto_45

    .line 2863
    .line 2864
    :cond_68
    move-object/from16 v0, v51

    .line 2865
    .line 2866
    invoke-static {v0, v14}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2867
    .line 2868
    .line 2869
    move-result-object v1

    .line 2870
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2871
    .line 2872
    .line 2873
    move-result-object v4

    .line 2874
    const/4 v5, 0x0

    .line 2875
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2876
    .line 2877
    .line 2878
    move-result v6

    .line 2879
    if-eqz v6, :cond_6c

    .line 2880
    .line 2881
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2882
    .line 2883
    .line 2884
    move-result-object v6

    .line 2885
    check-cast v6, Ljava/util/Map;

    .line 2886
    .line 2887
    move-object/from16 v9, v50

    .line 2888
    .line 2889
    invoke-static {v6, v9, v2, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2890
    .line 2891
    .line 2892
    move-result-object v6

    .line 2893
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2894
    .line 2895
    .line 2896
    move-result-object v10

    .line 2897
    :goto_43
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 2898
    .line 2899
    .line 2900
    move-result v11

    .line 2901
    if-eqz v11, :cond_6b

    .line 2902
    .line 2903
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2904
    .line 2905
    .line 2906
    move-result-object v11

    .line 2907
    check-cast v11, Ljava/util/Map;

    .line 2908
    .line 2909
    invoke-static {v11, v9, v2, v12, v6}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2910
    .line 2911
    .line 2912
    move-result v13

    .line 2913
    if-nez v13, :cond_69

    .line 2914
    .line 2915
    goto :goto_43

    .line 2916
    :cond_69
    invoke-static {v6, v14}, Lcom/sgscq/vpn/handler/x0;->r0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2917
    .line 2918
    .line 2919
    move-result v5

    .line 2920
    move-object/from16 v13, v47

    .line 2921
    .line 2922
    if-nez v5, :cond_6a

    .line 2923
    .line 2924
    invoke-static {v13, v11}, Lcom/sgscq/vpn/handler/x0;->g(Ljava/util/List;Ljava/util/Map;)V

    .line 2925
    .line 2926
    .line 2927
    goto :goto_46

    .line 2928
    :cond_6a
    const/4 v5, 0x1

    .line 2929
    goto :goto_43

    .line 2930
    :cond_6b
    move-object/from16 v50, v9

    .line 2931
    .line 2932
    goto :goto_42

    .line 2933
    :cond_6c
    move-object/from16 v13, v47

    .line 2934
    .line 2935
    move-object/from16 v9, v50

    .line 2936
    .line 2937
    if-eqz v5, :cond_6d

    .line 2938
    .line 2939
    goto :goto_46

    .line 2940
    :cond_6d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2941
    .line 2942
    .line 2943
    move-result-object v1

    .line 2944
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2945
    .line 2946
    .line 2947
    move-result v4

    .line 2948
    if-eqz v4, :cond_70

    .line 2949
    .line 2950
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2951
    .line 2952
    .line 2953
    move-result-object v4

    .line 2954
    check-cast v4, Ljava/util/Map;

    .line 2955
    .line 2956
    invoke-interface {v4, v9, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2957
    .line 2958
    .line 2959
    move-result-object v5

    .line 2960
    invoke-interface {v4, v12, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2961
    .line 2962
    .line 2963
    move-result-object v5

    .line 2964
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2965
    .line 2966
    .line 2967
    move-result-object v5

    .line 2968
    invoke-static {v5, v14}, Lcom/sgscq/vpn/handler/x0;->r0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2969
    .line 2970
    .line 2971
    move-result v5

    .line 2972
    if-eqz v5, :cond_6e

    .line 2973
    .line 2974
    goto :goto_44

    .line 2975
    :cond_6e
    invoke-static {v13, v4}, Lcom/sgscq/vpn/handler/x0;->g(Ljava/util/List;Ljava/util/Map;)V

    .line 2976
    .line 2977
    .line 2978
    goto :goto_46

    .line 2979
    :cond_6f
    :goto_45
    move-object/from16 v13, v47

    .line 2980
    .line 2981
    move-object/from16 v9, v50

    .line 2982
    .line 2983
    move-object/from16 v0, v51

    .line 2984
    .line 2985
    :cond_70
    :goto_46
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2986
    .line 2987
    .line 2988
    move-result-object v1

    .line 2989
    move-object/from16 v15, v25

    .line 2990
    .line 2991
    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2992
    .line 2993
    .line 2994
    const/4 v1, 0x2

    .line 2995
    move/from16 v4, v37

    .line 2996
    .line 2997
    if-ne v4, v1, :cond_71

    .line 2998
    .line 2999
    move/from16 v4, v28

    .line 3000
    .line 3001
    move/from16 v5, v32

    .line 3002
    .line 3003
    move-object/from16 v1, v45

    .line 3004
    .line 3005
    move-object/from16 v15, v46

    .line 3006
    .line 3007
    invoke-static {v5, v14, v15, v4, v1}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 3008
    .line 3009
    .line 3010
    goto :goto_47

    .line 3011
    :cond_71
    move-object/from16 v1, v45

    .line 3012
    .line 3013
    move-object/from16 v15, v46

    .line 3014
    .line 3015
    :goto_47
    iget-object v4, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3016
    .line 3017
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->c:Landroid/content/SharedPreferences;

    .line 3018
    .line 3019
    move-object/from16 v5, p1

    .line 3020
    .line 3021
    move-object/from16 v10, v33

    .line 3022
    .line 3023
    move-object/from16 v6, v34

    .line 3024
    .line 3025
    invoke-static {v10, v14, v5, v4}, Lcom/sgscq/vpn/cloud/m0;->Y1(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    .line 3026
    .line 3027
    .line 3028
    const-string v4, "109"

    .line 3029
    .line 3030
    invoke-static {v4, v14}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 3031
    .line 3032
    .line 3033
    iget-object v4, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3034
    .line 3035
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3036
    .line 3037
    invoke-virtual {v4, v10, v14}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 3038
    .line 3039
    .line 3040
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 3041
    .line 3042
    .line 3043
    move-result-wide v4

    .line 3044
    long-to-int v4, v4

    .line 3045
    iget-object v5, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3046
    .line 3047
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 3048
    .line 3049
    .line 3050
    move-result v11

    .line 3051
    move-object/from16 v23, v7

    .line 3052
    .line 3053
    move-object/from16 v28, v8

    .line 3054
    .line 3055
    int-to-long v7, v11

    .line 3056
    invoke-virtual {v5, v7, v8, v14}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 3057
    .line 3058
    .line 3059
    move-result-wide v32

    .line 3060
    iget-object v5, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3061
    .line 3062
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 3063
    .line 3064
    .line 3065
    move-result v5

    .line 3066
    move-object/from16 v7, v35

    .line 3067
    .line 3068
    invoke-static {v5, v7, v14}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 3069
    .line 3070
    .line 3071
    move-result v5

    .line 3072
    iget-object v7, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3073
    .line 3074
    invoke-virtual {v7}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 3075
    .line 3076
    .line 3077
    move-result v7

    .line 3078
    move-object/from16 v8, v26

    .line 3079
    .line 3080
    invoke-static {v7, v8, v14}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 3081
    .line 3082
    .line 3083
    move-result v7

    .line 3084
    iget-object v8, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3085
    .line 3086
    invoke-virtual {v8}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 3087
    .line 3088
    .line 3089
    move-result v8

    .line 3090
    invoke-static {v8, v6, v14}, Lcom/sgscq/vpn/handler/x0;->T0(ILjava/lang/String;Ljava/util/Map;)I

    .line 3091
    .line 3092
    .line 3093
    move-result v8

    .line 3094
    iget-object v3, v3, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3095
    .line 3096
    iget-object v3, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3097
    .line 3098
    const/16 v25, 0xa

    .line 3099
    .line 3100
    const/16 v26, 0x4

    .line 3101
    .line 3102
    move-object v11, v9

    .line 3103
    move-object/from16 v51, v0

    .line 3104
    .line 3105
    move-object/from16 v9, v17

    .line 3106
    .line 3107
    move-object/from16 v6, v30

    .line 3108
    .line 3109
    move-object/from16 v0, v38

    .line 3110
    .line 3111
    move-object/from16 v29, v42

    .line 3112
    .line 3113
    move-object/from16 v45, v1

    .line 3114
    .line 3115
    move-object/from16 v47, v13

    .line 3116
    .line 3117
    move-object/from16 v1, v51

    .line 3118
    .line 3119
    move-object v13, v2

    .line 3120
    move-object v2, v6

    .line 3121
    move v6, v7

    .line 3122
    move-object/from16 v34, v15

    .line 3123
    .line 3124
    move-object/from16 v64, v23

    .line 3125
    .line 3126
    move-object/from16 v15, v28

    .line 3127
    .line 3128
    move-wide/from16 v62, v40

    .line 3129
    .line 3130
    move v7, v8

    .line 3131
    move-object/from16 v30, v2

    .line 3132
    .line 3133
    move-object v2, v9

    .line 3134
    move-object/from16 v68, v18

    .line 3135
    .line 3136
    move-object/from16 v67, v22

    .line 3137
    .line 3138
    move-object/from16 v66, v27

    .line 3139
    .line 3140
    move-object/from16 v65, v31

    .line 3141
    .line 3142
    move-object/from16 p1, v47

    .line 3143
    .line 3144
    move-wide/from16 v8, v32

    .line 3145
    .line 3146
    move-object/from16 v17, v2

    .line 3147
    .line 3148
    move-object v2, v11

    .line 3149
    move-object/from16 v69, v24

    .line 3150
    .line 3151
    move-object v11, v14

    .line 3152
    invoke-virtual/range {v3 .. v11}, Lcom/sgscq/vpn/h5;->u(IIIIJLjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    .line 3153
    .line 3154
    .line 3155
    move-result-object v3

    .line 3156
    new-instance v4, Lorg/json/JSONObject;

    .line 3157
    .line 3158
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3159
    .line 3160
    .line 3161
    new-instance v3, Ljava/util/HashMap;

    .line 3162
    .line 3163
    invoke-direct {v3, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3164
    .line 3165
    .line 3166
    new-instance v5, Ljava/util/ArrayList;

    .line 3167
    .line 3168
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3169
    .line 3170
    .line 3171
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3172
    .line 3173
    .line 3174
    move-result-object v6

    .line 3175
    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 3176
    .line 3177
    .line 3178
    move-result v7

    .line 3179
    if-eqz v7, :cond_72

    .line 3180
    .line 3181
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3182
    .line 3183
    .line 3184
    move-result-object v7

    .line 3185
    check-cast v7, Ljava/util/Map;

    .line 3186
    .line 3187
    invoke-static {v7, v2, v13, v12}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3188
    .line 3189
    .line 3190
    move-result-object v7

    .line 3191
    invoke-static {v12, v7, v5, v14}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 3192
    .line 3193
    .line 3194
    goto :goto_48

    .line 3195
    :cond_72
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3196
    .line 3197
    .line 3198
    move-result-object v6

    .line 3199
    :goto_49
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 3200
    .line 3201
    .line 3202
    move-result v7

    .line 3203
    if-eqz v7, :cond_73

    .line 3204
    .line 3205
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3206
    .line 3207
    .line 3208
    move-result-object v7

    .line 3209
    check-cast v7, Ljava/util/Map;

    .line 3210
    .line 3211
    const-string v8, "skill_id"

    .line 3212
    .line 3213
    invoke-static {v7, v2, v13, v8}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3214
    .line 3215
    .line 3216
    move-result-object v7

    .line 3217
    invoke-static {v8, v7, v5, v14}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 3218
    .line 3219
    .line 3220
    goto :goto_49

    .line 3221
    :cond_73
    new-instance v2, Ljava/util/ArrayList;

    .line 3222
    .line 3223
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3224
    .line 3225
    .line 3226
    new-instance v6, Ljava/util/ArrayList;

    .line 3227
    .line 3228
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3229
    .line 3230
    .line 3231
    const-string v7, "upd"

    .line 3232
    .line 3233
    move-object/from16 v8, p1

    .line 3234
    .line 3235
    filled-new-array {v7, v8, v0, v6}, [Ljava/lang/Object;

    .line 3236
    .line 3237
    .line 3238
    move-result-object v6

    .line 3239
    const-string v9, "del"

    .line 3240
    .line 3241
    invoke-static {v9, v2, v6, v3, v1}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3242
    .line 3243
    .line 3244
    move-result-object v2

    .line 3245
    new-instance v6, Ljava/util/ArrayList;

    .line 3246
    .line 3247
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3248
    .line 3249
    .line 3250
    move-object/from16 v10, v19

    .line 3251
    .line 3252
    filled-new-array {v7, v10, v0, v6}, [Ljava/lang/Object;

    .line 3253
    .line 3254
    .line 3255
    move-result-object v6

    .line 3256
    move-object/from16 v13, v48

    .line 3257
    .line 3258
    invoke-static {v9, v2, v6, v3, v13}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3259
    .line 3260
    .line 3261
    move-result-object v2

    .line 3262
    new-instance v6, Ljava/util/ArrayList;

    .line 3263
    .line 3264
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3265
    .line 3266
    .line 3267
    filled-new-array {v7, v15, v0, v6}, [Ljava/lang/Object;

    .line 3268
    .line 3269
    .line 3270
    move-result-object v6

    .line 3271
    const-string v11, "GeneralSoul"

    .line 3272
    .line 3273
    invoke-static {v9, v2, v6, v3, v11}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3274
    .line 3275
    .line 3276
    move-result-object v2

    .line 3277
    new-instance v6, Ljava/util/ArrayList;

    .line 3278
    .line 3279
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3280
    .line 3281
    .line 3282
    move-object/from16 v11, v17

    .line 3283
    .line 3284
    filled-new-array {v7, v11, v0, v6}, [Ljava/lang/Object;

    .line 3285
    .line 3286
    .line 3287
    move-result-object v6

    .line 3288
    const-string v12, "TeamGeneral"

    .line 3289
    .line 3290
    invoke-static {v9, v2, v6, v3, v12}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3291
    .line 3292
    .line 3293
    move-result-object v2

    .line 3294
    move-object/from16 v6, v65

    .line 3295
    .line 3296
    filled-new-array {v7, v6, v0, v2}, [Ljava/lang/Object;

    .line 3297
    .line 3298
    .line 3299
    move-result-object v2

    .line 3300
    move-object/from16 v17, v14

    .line 3301
    .line 3302
    move-object/from16 v14, v20

    .line 3303
    .line 3304
    move-object/from16 v12, v30

    .line 3305
    .line 3306
    invoke-static {v9, v12, v2, v3, v14}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3307
    .line 3308
    .line 3309
    move-result-object v2

    .line 3310
    move-object/from16 p1, v4

    .line 3311
    .line 3312
    new-instance v4, Ljava/util/ArrayList;

    .line 3313
    .line 3314
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3315
    .line 3316
    .line 3317
    filled-new-array {v7, v5, v0, v4}, [Ljava/lang/Object;

    .line 3318
    .line 3319
    .line 3320
    move-result-object v0

    .line 3321
    invoke-static {v9, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 3322
    .line 3323
    .line 3324
    move-result-object v0

    .line 3325
    const-string v2, "Atlas"

    .line 3326
    .line 3327
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    .line 3329
    .line 3330
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3331
    .line 3332
    const-string v2, "[Wine] delta generals="

    .line 3333
    .line 3334
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3335
    .line 3336
    .line 3337
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 3338
    .line 3339
    .line 3340
    move-result v2

    .line 3341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3342
    .line 3343
    .line 3344
    const-string v2, " skills="

    .line 3345
    .line 3346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3347
    .line 3348
    .line 3349
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 3350
    .line 3351
    .line 3352
    move-result v2

    .line 3353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3354
    .line 3355
    .line 3356
    const-string v2, " souls="

    .line 3357
    .line 3358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    .line 3360
    .line 3361
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 3362
    .line 3363
    .line 3364
    move-result v2

    .line 3365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3366
    .line 3367
    .line 3368
    const-string v2, " teams="

    .line 3369
    .line 3370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    .line 3372
    .line 3373
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 3374
    .line 3375
    .line 3376
    move-result v2

    .line 3377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3378
    .line 3379
    .line 3380
    const-string v2, " items="

    .line 3381
    .line 3382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3383
    .line 3384
    .line 3385
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 3386
    .line 3387
    .line 3388
    move-result v2

    .line 3389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3390
    .line 3391
    .line 3392
    const-string v2, " atlas="

    .line 3393
    .line 3394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3395
    .line 3396
    .line 3397
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 3398
    .line 3399
    .line 3400
    move-result v2

    .line 3401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3402
    .line 3403
    .line 3404
    const-string v2, " deletedItems="

    .line 3405
    .line 3406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3407
    .line 3408
    .line 3409
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 3410
    .line 3411
    .line 3412
    move-result v2

    .line 3413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3414
    .line 3415
    .line 3416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3417
    .line 3418
    .line 3419
    move-result-object v0

    .line 3420
    move-object/from16 v2, v69

    .line 3421
    .line 3422
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3423
    .line 3424
    .line 3425
    move-object/from16 v0, p0

    .line 3426
    .line 3427
    iget-object v2, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3428
    .line 3429
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3430
    .line 3431
    const-string v4, "Atlas"

    .line 3432
    .line 3433
    const-string v5, "GeneralSoul"

    .line 3434
    .line 3435
    filled-new-array {v1, v13, v5, v14, v4}, [Ljava/lang/String;

    .line 3436
    .line 3437
    .line 3438
    move-result-object v4

    .line 3439
    move-object/from16 v5, p1

    .line 3440
    .line 3441
    invoke-virtual {v2, v3, v5, v4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 3442
    .line 3443
    .line 3444
    move-result-object v2

    .line 3445
    const/16 v3, 0x708

    .line 3446
    .line 3447
    move-object/from16 v4, v17

    .line 3448
    .line 3449
    move-object/from16 v7, v39

    .line 3450
    .line 3451
    move-wide/from16 v5, v62

    .line 3452
    .line 3453
    invoke-static {v4, v7, v5, v6, v3}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 3454
    .line 3455
    .line 3456
    move-result v35

    .line 3457
    const/16 v3, 0x258

    .line 3458
    .line 3459
    move-object/from16 v7, v67

    .line 3460
    .line 3461
    invoke-static {v4, v7, v5, v6, v3}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 3462
    .line 3463
    .line 3464
    move-result v37

    .line 3465
    const/16 v3, 0x12c

    .line 3466
    .line 3467
    move-object/from16 v7, v66

    .line 3468
    .line 3469
    invoke-static {v4, v7, v5, v6, v3}, Lcom/sgscq/vpn/handler/x0;->I(Ljava/util/Map;Ljava/lang/String;JI)I

    .line 3470
    .line 3471
    .line 3472
    move-result v39

    .line 3473
    if-nez v35, :cond_74

    .line 3474
    .line 3475
    const/4 v3, 0x1

    .line 3476
    goto :goto_4a

    .line 3477
    :cond_74
    const/4 v3, 0x0

    .line 3478
    :goto_4a
    move/from16 v36, v3

    .line 3479
    .line 3480
    if-nez v37, :cond_75

    .line 3481
    .line 3482
    const/4 v3, 0x1

    .line 3483
    goto :goto_4b

    .line 3484
    :cond_75
    const/4 v3, 0x0

    .line 3485
    :goto_4b
    move/from16 v38, v3

    .line 3486
    .line 3487
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/x0;->F()Ljava/lang/String;

    .line 3488
    .line 3489
    .line 3490
    move-result-object v43

    .line 3491
    invoke-static {v4}, Lcom/sgscq/vpn/handler/x0;->t0(Ljava/util/Map;)Z

    .line 3492
    .line 3493
    .line 3494
    move-result v42

    .line 3495
    iget-object v3, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3496
    .line 3497
    const/4 v5, 0x0

    .line 3498
    move-object/from16 v6, v34

    .line 3499
    .line 3500
    invoke-virtual {v3, v5, v6, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3501
    .line 3502
    .line 3503
    move-result v3

    .line 3504
    iget-object v6, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3505
    .line 3506
    move-object/from16 v7, v45

    .line 3507
    .line 3508
    invoke-virtual {v6, v5, v7, v4}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3509
    .line 3510
    .line 3511
    move-result v6

    .line 3512
    const/4 v7, 0x1

    .line 3513
    if-gt v6, v7, :cond_76

    .line 3514
    .line 3515
    move/from16 v6, v26

    .line 3516
    .line 3517
    goto :goto_4c

    .line 3518
    :cond_76
    move/from16 v6, v25

    .line 3519
    .line 3520
    :goto_4c
    add-int/2addr v3, v7

    .line 3521
    rem-int/2addr v3, v6

    .line 3522
    sub-int v3, v6, v3

    .line 3523
    .line 3524
    if-ne v3, v6, :cond_77

    .line 3525
    .line 3526
    move/from16 v40, v5

    .line 3527
    .line 3528
    goto :goto_4d

    .line 3529
    :cond_77
    move/from16 v40, v3

    .line 3530
    .line 3531
    :goto_4d
    move/from16 v41, v6

    .line 3532
    .line 3533
    invoke-static/range {v35 .. v43}, Lcom/sgscq/vpn/handler/x0;->C(IIIIIIIILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 3534
    .line 3535
    .line 3536
    move-result-object v24

    .line 3537
    move-object/from16 v5, v64

    .line 3538
    .line 3539
    move-object/from16 v3, v68

    .line 3540
    .line 3541
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/x0;->D(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 3542
    .line 3543
    .line 3544
    move-result-object v3

    .line 3545
    const-string v5, "reward_info"

    .line 3546
    .line 3547
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3548
    .line 3549
    .line 3550
    move-result-object v5

    .line 3551
    move-object/from16 v20, v5

    .line 3552
    .line 3553
    check-cast v20, Ljava/util/Map;

    .line 3554
    .line 3555
    const-string v5, "show_general_info"

    .line 3556
    .line 3557
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3558
    .line 3559
    .line 3560
    move-result-object v3

    .line 3561
    move-object/from16 v22, v3

    .line 3562
    .line 3563
    check-cast v22, Ljava/util/List;

    .line 3564
    .line 3565
    const-string v11, "ret"

    .line 3566
    .line 3567
    const-string v3, "code"

    .line 3568
    .line 3569
    const-string v15, "result"

    .line 3570
    .line 3571
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3572
    .line 3573
    const-string v17, "msg"

    .line 3574
    .line 3575
    const-string v18, "success"

    .line 3576
    .line 3577
    const-string v19, "reward_info"

    .line 3578
    .line 3579
    const-string v6, "show_general_info"

    .line 3580
    .line 3581
    const-string v23, "user_wine_info"

    .line 3582
    .line 3583
    const-string v25, "cmn"

    .line 3584
    .line 3585
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 3586
    .line 3587
    .line 3588
    move-result-object v26

    .line 3589
    move-object/from16 v12, v16

    .line 3590
    .line 3591
    move-object v8, v13

    .line 3592
    move-object/from16 v2, v21

    .line 3593
    .line 3594
    move-object v13, v3

    .line 3595
    move-object v3, v4

    .line 3596
    move-object/from16 v14, v16

    .line 3597
    .line 3598
    move-object/from16 v4, v16

    .line 3599
    .line 3600
    move-object/from16 v16, v5

    .line 3601
    .line 3602
    move-object/from16 v21, v6

    .line 3603
    .line 3604
    filled-new-array/range {v11 .. v26}, [Ljava/lang/Object;

    .line 3605
    .line 3606
    .line 3607
    move-result-object v5

    .line 3608
    invoke-static {v2, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 3609
    .line 3610
    .line 3611
    move-result-object v2

    .line 3612
    iget-object v4, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3613
    .line 3614
    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3615
    .line 3616
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    .line 3617
    .line 3618
    .line 3619
    move-result v5

    .line 3620
    xor-int/2addr v5, v7

    .line 3621
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 3622
    .line 3623
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3624
    .line 3625
    .line 3626
    if-nez v5, :cond_78

    .line 3627
    .line 3628
    goto :goto_4e

    .line 3629
    :cond_78
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3630
    .line 3631
    .line 3632
    invoke-static {v1, v3}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 3633
    .line 3634
    .line 3635
    move-result-object v4

    .line 3636
    invoke-static {v8, v3}, Lcom/sgscq/vpn/h5;->C0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 3637
    .line 3638
    .line 3639
    move-result-object v3

    .line 3640
    const-string v5, "general_info"

    .line 3641
    .line 3642
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3643
    .line 3644
    .line 3645
    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3646
    .line 3647
    .line 3648
    const-string v1, "skill_info"

    .line 3649
    .line 3650
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3651
    .line 3652
    .line 3653
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    .line 3655
    .line 3656
    :goto_4e
    invoke-interface {v2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3657
    .line 3658
    .line 3659
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 3660
    .line 3661
    .line 3662
    move-result-object v1

    .line 3663
    iget-object v2, v0, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3664
    .line 3665
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 3666
    .line 3667
    .line 3668
    move-result-object v1

    .line 3669
    return-object v1

    .line 3670
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 8
        0x3fd999999999999aL    # 0.4
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x19
        0x19
        0xf
        0x7
        0x3
    .end array-data
.end method

.method public final o(ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, "general_id"

    .line 4
    .line 5
    invoke-static {v0, p2, v1, p2}, Lc/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "general_name"

    .line 10
    .line 11
    invoke-static {p3}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p3, "num"

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p3, "card_type"

    .line 33
    .line 34
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p1, "type"

    .line 38
    .line 39
    const-string p3, "2"

    .line 40
    .line 41
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2, v0}, Lcom/sgscq/vpn/handler/x0;->X(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final p0()[B
    .locals 21

    .line 1
    const-string v13, "\u7231\u53d1\u7535 LV3 \u53ca\u4ee5\u4e0a\u4f1a\u5458\u53ef\u4f7f\u7528\u6b64\u5145\u503c\u6863\u4f4d"

    .line 2
    .line 3
    move-object v7, v13

    .line 4
    move-object v9, v13

    .line 5
    move-object v11, v13

    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v15

    .line 11
    move-object v3, v15

    .line 12
    move-object v1, v15

    .line 13
    const-string v0, "code"

    .line 14
    .line 15
    const-string v2, "error_code"

    .line 16
    .line 17
    const-string v4, "result"

    .line 18
    .line 19
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    const-string v6, "msg"

    .line 22
    .line 23
    const-string v8, "message"

    .line 24
    .line 25
    const-string v10, "toast"

    .line 26
    .line 27
    const-string v12, "tips"

    .line 28
    .line 29
    const-string v14, "pay_url"

    .line 30
    .line 31
    const-string v16, ""

    .line 32
    .line 33
    move-object/from16 v20, v15

    .line 34
    .line 35
    move-object/from16 v15, v16

    .line 36
    .line 37
    const-string v16, "status"

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    move-object/from16 v19, v17

    .line 46
    .line 47
    const-string v18, "pay_status"

    .line 48
    .line 49
    filled-new-array/range {v0 .. v19}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "ret"

    .line 54
    .line 55
    move-object/from16 v2, v20

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object/from16 v1, p0

    .line 66
    .line 67
    iget-object v2, v1, Lcom/sgscq/vpn/handler/x0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method public final s(Ljava/lang/String;[I[I[D)[Z
    .locals 8

    .line 1
    const/4 v0, 0x6

    new-array v0, v0, [Z

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    array-length p1, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_1

    aget v4, p2, v2

    aput-boolean v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    move p2, p1

    :goto_1
    array-length v2, p3

    iget-object v4, p0, Lcom/sgscq/vpn/handler/x0;->b:Ljava/util/Random;

    if-ge p1, v2, :cond_4

    aget v2, p3, p1

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aget-wide v6, p4, p1

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    aput-boolean v4, v0, v2

    aget v2, p3, p1

    aget-boolean v2, v0, v2

    if-nez v2, :cond_3

    move p2, v3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    array-length p1, p3

    invoke-virtual {v4, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    aget p1, p3, p1

    aput-boolean v1, v0, p1

    :cond_5
    return-object v0
.end method

.method public final t(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 6
    .line 7
    .line 8
    move-result-wide v11

    .line 9
    const/4 v13, 0x0

    .line 10
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "user_honor"

    .line 15
    .line 16
    invoke-interface {v10, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, v13}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v14

    .line 28
    new-instance v15, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "H1"

    .line 34
    .line 35
    const-string v4, "791759"

    .line 36
    .line 37
    const-string v5, "\u7075\u829d\u00d7100"

    .line 38
    .line 39
    const-string v6, "\u7075\u829d\u00d7100"

    .line 40
    .line 41
    const/16 v7, 0x3e8

    .line 42
    .line 43
    const/16 v1, 0x3e8

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    if-lt v14, v1, :cond_0

    .line 47
    .line 48
    move v8, v9

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v8, v13

    .line 51
    :goto_0
    const/16 v16, 0x64

    .line 52
    .line 53
    move-object v1, v15

    .line 54
    move-object/from16 v2, p1

    .line 55
    .line 56
    move v13, v9

    .line 57
    move/from16 v9, v16

    .line 58
    .line 59
    invoke-static/range {v1 .. v9}, Lcom/sgscq/vpn/handler/x0;->b(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 60
    .line 61
    .line 62
    const-string v3, "H2"

    .line 63
    .line 64
    const-string v4, "791462"

    .line 65
    .line 66
    const-string v5, "\u7075\u829d\u00d710"

    .line 67
    .line 68
    const-string v6, "\u7075\u829d\u00d710"

    .line 69
    .line 70
    const/16 v7, 0x64

    .line 71
    .line 72
    const/16 v9, 0x64

    .line 73
    .line 74
    if-lt v14, v9, :cond_1

    .line 75
    .line 76
    move v8, v13

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v8, 0x0

    .line 79
    :goto_1
    const/16 v16, 0xa

    .line 80
    .line 81
    move-object v1, v15

    .line 82
    move-object/from16 v2, p1

    .line 83
    .line 84
    move v13, v9

    .line 85
    move/from16 v9, v16

    .line 86
    .line 87
    invoke-static/range {v1 .. v9}, Lcom/sgscq/vpn/handler/x0;->b(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 88
    .line 89
    .line 90
    const-string v3, "H3"

    .line 91
    .line 92
    const-string v4, "600009"

    .line 93
    .line 94
    const-string v5, "\u666e\u901a\u4f20\u627f\u7b26"

    .line 95
    .line 96
    const-string v1, "600009"

    .line 97
    .line 98
    const-string v2, "\u666e\u901a\u4f20\u627f\u7b26"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/sgscq/vpn/handler/x0;->R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const/16 v7, 0x32

    .line 105
    .line 106
    const/16 v1, 0x32

    .line 107
    .line 108
    if-lt v14, v1, :cond_2

    .line 109
    .line 110
    const/4 v8, 0x1

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const/4 v8, 0x0

    .line 113
    :goto_2
    const/4 v9, 0x1

    .line 114
    move-object v1, v15

    .line 115
    move-object/from16 v2, p1

    .line 116
    .line 117
    invoke-static/range {v1 .. v9}, Lcom/sgscq/vpn/handler/x0;->b(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 118
    .line 119
    .line 120
    const-string v3, "H4"

    .line 121
    .line 122
    const-string v4, "600010"

    .line 123
    .line 124
    const-string v5, "\u9ad8\u7ea7\u4f20\u627f\u7b26"

    .line 125
    .line 126
    const-string v1, "600010"

    .line 127
    .line 128
    const-string v2, "\u9ad8\u7ea7\u4f20\u627f\u7b26"

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/sgscq/vpn/handler/x0;->R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/16 v7, 0x64

    .line 135
    .line 136
    if-lt v14, v13, :cond_3

    .line 137
    .line 138
    const/4 v8, 0x1

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    const/4 v8, 0x0

    .line 141
    :goto_3
    const/4 v9, 0x1

    .line 142
    move-object v1, v15

    .line 143
    move-object/from16 v2, p1

    .line 144
    .line 145
    invoke-static/range {v1 .. v9}, Lcom/sgscq/vpn/handler/x0;->b(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 146
    .line 147
    .line 148
    const-string v3, "H5"

    .line 149
    .line 150
    const-string v4, "600011"

    .line 151
    .line 152
    const-string v5, "\u8d85\u7ea7\u4f20\u627f\u7b26"

    .line 153
    .line 154
    const-string v1, "600011"

    .line 155
    .line 156
    const-string v2, "\u8d85\u7ea7\u4f20\u627f\u7b26"

    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/sgscq/vpn/handler/x0;->R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    const/16 v7, 0xc8

    .line 163
    .line 164
    const/16 v1, 0xc8

    .line 165
    .line 166
    if-lt v14, v1, :cond_4

    .line 167
    .line 168
    const/4 v8, 0x1

    .line 169
    goto :goto_4

    .line 170
    :cond_4
    const/4 v8, 0x0

    .line 171
    :goto_4
    const/4 v9, 0x1

    .line 172
    move-object v1, v15

    .line 173
    move-object/from16 v2, p1

    .line 174
    .line 175
    invoke-static/range {v1 .. v9}, Lcom/sgscq/vpn/handler/x0;->b(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 176
    .line 177
    .line 178
    invoke-static {v11, v12}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1}, Lcom/sgscq/vpn/c2;->d(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-static {v1}, Lcom/sgscq/vpn/c2;->b(I)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-static {v11, v12, v10}, Lcom/sgscq/vpn/c2;->c(JLjava/util/Map;)I

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    const/4 v12, 0x0

    .line 195
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-ge v12, v1, :cond_8

    .line 200
    .line 201
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/sgscq/vpn/b2;

    .line 206
    .line 207
    if-nez v12, :cond_5

    .line 208
    .line 209
    const-string v2, "H6"

    .line 210
    .line 211
    :goto_6
    move-object v3, v2

    .line 212
    goto :goto_7

    .line 213
    :cond_5
    const/4 v2, 0x1

    .line 214
    if-ne v12, v2, :cond_6

    .line 215
    .line 216
    const-string v2, "H7"

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_6
    const-string v2, ""

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :goto_7
    iget-object v4, v1, Lcom/sgscq/vpn/b2;->a:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v6, v1, Lcom/sgscq/vpn/b2;->c:Ljava/lang/String;

    .line 225
    .line 226
    const/16 v7, 0x14

    .line 227
    .line 228
    if-lt v14, v11, :cond_7

    .line 229
    .line 230
    const/4 v8, 0x1

    .line 231
    goto :goto_8

    .line 232
    :cond_7
    const/4 v8, 0x0

    .line 233
    :goto_8
    const/4 v9, 0x1

    .line 234
    move-object v1, v15

    .line 235
    move-object/from16 v2, p1

    .line 236
    .line 237
    move-object v5, v6

    .line 238
    invoke-static/range {v1 .. v9}, Lcom/sgscq/vpn/handler/x0;->b(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    const/4 v2, 0x1

    .line 246
    sub-int/2addr v1, v2

    .line 247
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Ljava/util/Map;

    .line 252
    .line 253
    const-string v3, "discount_price"

    .line 254
    .line 255
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    add-int/lit8 v12, v12, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_8
    return-object v15
.end method
