.class public final enum Lc5/c;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc5/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc5/c;

.field public static final enum c:Lc5/c;

.field private static final synthetic d:[Lc5/c;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc5/c;

    const-string v1, "DEVICE"

    const/4 v2, 0x0

    const-string v3, "dvc"

    invoke-direct {v0, v1, v2, v3}, Lc5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc5/c;->b:Lc5/c;

    .line 2
    new-instance v1, Lc5/c;

    const-string v3, "UIX"

    const/4 v4, 0x1

    const-string/jumbo v5, "uix"

    invoke-direct {v1, v3, v4, v5}, Lc5/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lc5/c;->c:Lc5/c;

    const/4 v3, 0x2

    new-array v3, v3, [Lc5/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lc5/c;->d:[Lc5/c;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lc5/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc5/c;
    .locals 1

    const-class v0, Lc5/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc5/c;

    return-object p0
.end method

.method public static values()[Lc5/c;
    .locals 1

    sget-object v0, Lc5/c;->d:[Lc5/c;

    invoke-virtual {v0}, [Lc5/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc5/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/c;->a:Ljava/lang/String;

    return-object p0
.end method
