.class public final enum Lz6/m;
.super Ljava/lang/Enum;
.source "KVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz6/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz6/m;

.field public static final enum b:Lz6/m;

.field public static final enum c:Lz6/m;

.field public static final enum d:Lz6/m;

.field private static final synthetic f:[Lz6/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lz6/m;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz6/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz6/m;->a:Lz6/m;

    .line 2
    new-instance v0, Lz6/m;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz6/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz6/m;->b:Lz6/m;

    .line 3
    new-instance v0, Lz6/m;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz6/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz6/m;->c:Lz6/m;

    .line 4
    new-instance v0, Lz6/m;

    const-string v1, "PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz6/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz6/m;->d:Lz6/m;

    invoke-static {}, Lz6/m;->a()[Lz6/m;

    move-result-object v0

    sput-object v0, Lz6/m;->f:[Lz6/m;

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

.method private static final synthetic a()[Lz6/m;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lz6/m;

    sget-object v1, Lz6/m;->a:Lz6/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lz6/m;->b:Lz6/m;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lz6/m;->c:Lz6/m;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lz6/m;->d:Lz6/m;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lz6/m;
    .locals 1

    const-class v0, Lz6/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz6/m;

    return-object p0
.end method

.method public static values()[Lz6/m;
    .locals 1

    sget-object v0, Lz6/m;->f:[Lz6/m;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz6/m;

    return-object v0
.end method
