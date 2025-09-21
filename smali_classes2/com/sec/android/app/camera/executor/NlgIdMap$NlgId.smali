.class final enum Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;
.super Ljava/lang/Enum;
.source "NlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/NlgIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NlgId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_ALREADY_SET:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_AVAILABLE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_CURRENT_MODE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_EXIST:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_FLASH:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_FRONT:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_MATCH:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_MODE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_NO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_OUT_OF_RANGE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_PICTURE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_REAR:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_SETTING_VALUE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_SHOOTING_PICTURE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_SHOOTING_VIDEO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_SHOW:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_SUPPORT:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_TYPE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_VALID:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_VALUE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_VIDEO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

.field public static final enum NLG_STRING_YES:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;


# instance fields
.field private strName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v1, "NLG_STRING_MODE"

    const/4 v2, 0x0

    const-string v3, "Mode"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_MODE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v3, "NLG_STRING_CURRENT_MODE"

    const/4 v4, 0x1

    const-string v5, "CurrentMode"

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_CURRENT_MODE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v5, "NLG_STRING_SHOOTING_VIDEO"

    const/4 v6, 0x2

    const-string v7, "ShootingVideo"

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_SHOOTING_VIDEO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v7, "NLG_STRING_SHOOTING_PICTURE"

    const/4 v8, 0x3

    const-string v9, "ShootingPicture"

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_SHOOTING_PICTURE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v9, "NLG_STRING_SETTING_VALUE"

    const/4 v10, 0x4

    const-string v11, "SettingValue"

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_SETTING_VALUE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v11, "NLG_STRING_FLASH"

    const/4 v12, 0x5

    const-string v13, "Flash"

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_FLASH:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v13, "NLG_STRING_ALREADY_SET"

    const/4 v14, 0x6

    const-string v15, "AlreadySet"

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_ALREADY_SET:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_EXIST"

    const/4 v14, 0x7

    const-string v12, "Exist"

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_EXIST:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 9
    new-instance v12, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_VALID"

    const/16 v14, 0x8

    const-string v10, "Valid"

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_VALID:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 10
    new-instance v10, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_TYPE"

    const/16 v14, 0x9

    const-string v8, "Type"

    invoke-direct {v10, v15, v14, v8}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_TYPE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 11
    new-instance v8, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_MATCH"

    const/16 v14, 0xa

    const-string v6, "Match"

    invoke-direct {v8, v15, v14, v6}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_MATCH:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 12
    new-instance v6, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_VALUE"

    const/16 v14, 0xb

    const-string v4, "Value"

    invoke-direct {v6, v15, v14, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_VALUE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 13
    new-instance v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_AVAILABLE"

    const/16 v14, 0xc

    const-string v2, "Available"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_AVAILABLE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 14
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_SHOW"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "Show"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_SHOW:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 15
    new-instance v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_OUT_OF_RANGE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "OutOfRange"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_OUT_OF_RANGE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 16
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_SUPPORT"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "Support"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_SUPPORT:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 17
    new-instance v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_YES"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string/jumbo v2, "yes"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_YES:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 18
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_NO"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "no"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_NO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 19
    new-instance v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_REAR"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "rear"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_REAR:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 20
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_FRONT"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "front"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_FRONT:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 21
    new-instance v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_PICTURE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "Picture"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_PICTURE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    .line 22
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const-string v15, "NLG_STRING_VIDEO"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "Video"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_VIDEO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    aput-object v2, v4, v14

    .line 23
    sput-object v4, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->$VALUES:[Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->strName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->$VALUES:[Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->strName:Ljava/lang/String;

    return-object p0
.end method
