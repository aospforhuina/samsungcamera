.class public final enum Ls5/d;
.super Ljava/lang/Enum;
.source "ScenarioType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls5/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls5/d;

.field public static final enum b:Ls5/d;

.field public static final enum c:Ls5/d;

.field public static final enum d:Ls5/d;

.field public static final enum f:Ls5/d;

.field public static final enum g:Ls5/d;

.field public static final enum k:Ls5/d;

.field public static final enum l:Ls5/d;

.field public static final enum m:Ls5/d;

.field public static final enum n:Ls5/d;

.field private static final synthetic o:[Ls5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ls5/d;

    const-string v1, "CHANGE_SHOOTING_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls5/d;->a:Ls5/d;

    .line 2
    new-instance v1, Ls5/d;

    const-string v3, "CONNECT_MAKER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls5/d;->b:Ls5/d;

    .line 3
    new-instance v3, Ls5/d;

    const-string v5, "ENABLE_SUPER_SLOW_MOTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls5/d;->c:Ls5/d;

    .line 4
    new-instance v5, Ls5/d;

    const-string v7, "LAUNCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls5/d;->d:Ls5/d;

    .line 5
    new-instance v7, Ls5/d;

    const-string v9, "START_RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ls5/d;->f:Ls5/d;

    .line 6
    new-instance v9, Ls5/d;

    const-string v11, "STOP_RECORDING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ls5/d;->g:Ls5/d;

    .line 7
    new-instance v11, Ls5/d;

    const-string v13, "START_SINGLE_TAKE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ls5/d;->k:Ls5/d;

    .line 8
    new-instance v13, Ls5/d;

    const-string v15, "STOP_SINGLE_TAKE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ls5/d;->l:Ls5/d;

    .line 9
    new-instance v15, Ls5/d;

    const-string v14, "TAKE_PICTURE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ls5/d;->m:Ls5/d;

    .line 10
    new-instance v14, Ls5/d;

    const-string v12, "TAKE_RAW_PICTURE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ls5/d;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ls5/d;->n:Ls5/d;

    const/16 v12, 0xa

    new-array v12, v12, [Ls5/d;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Ls5/d;->o:[Ls5/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls5/d;
    .locals 1

    const-class v0, Ls5/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls5/d;

    return-object p0
.end method

.method public static values()[Ls5/d;
    .locals 1

    sget-object v0, Ls5/d;->o:[Ls5/d;

    invoke-virtual {v0}, [Ls5/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls5/d;

    return-object v0
.end method
