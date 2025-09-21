.class public final enum Lx4/b;
.super Ljava/lang/Enum;
.source "Directory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx4/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lx4/b;

.field public static final enum c:Lx4/b;

.field public static final enum d:Lx4/b;

.field public static final enum f:Lx4/b;

.field private static final synthetic g:[Lx4/b;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lx4/b;

    const-string v1, "DEVICE_CONTROLLER_DIR"

    const/4 v2, 0x0

    const-string v3, "/v3/sdk/quotas"

    invoke-direct {v0, v1, v2, v3}, Lx4/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lx4/b;->b:Lx4/b;

    .line 2
    new-instance v1, Lx4/b;

    const-string v3, "DATA_DELETE"

    const/4 v4, 0x1

    const-string v5, "/v3/sdk/indiv/delete"

    invoke-direct {v1, v3, v4, v5}, Lx4/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lx4/b;->c:Lx4/b;

    .line 3
    new-instance v3, Lx4/b;

    const-string v5, "DLS_DIR"

    const/4 v6, 0x2

    const-string v7, ""

    invoke-direct {v3, v5, v6, v7}, Lx4/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lx4/b;->d:Lx4/b;

    .line 4
    new-instance v5, Lx4/b;

    const-string v8, "DLS_DIR_BAT"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lx4/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lx4/b;->f:Lx4/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lx4/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    .line 5
    sput-object v7, Lx4/b;->g:[Lx4/b;

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
    iput-object p3, p0, Lx4/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx4/b;
    .locals 1

    const-class v0, Lx4/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx4/b;

    return-object p0
.end method

.method public static values()[Lx4/b;
    .locals 1

    sget-object v0, Lx4/b;->g:[Lx4/b;

    invoke-virtual {v0}, [Lx4/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx4/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx4/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lx4/b;->a:Ljava/lang/String;

    return-void
.end method
