.class public final enum Lm2/b;
.super Ljava/lang/Enum;
.source "Toolkit.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lm2/b;

.field public static final enum c:Lm2/b;

.field private static final synthetic d:[Lm2/b;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lm2/b;

    const-string v1, "NV21"

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lm2/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm2/b;->b:Lm2/b;

    .line 2
    new-instance v0, Lm2/b;

    const-string v1, "YV12"

    const/4 v2, 0x1

    const v3, 0x32315659

    invoke-direct {v0, v1, v2, v3}, Lm2/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lm2/b;->c:Lm2/b;

    invoke-static {}, Lm2/b;->a()[Lm2/b;

    move-result-object v0

    sput-object v0, Lm2/b;->d:[Lm2/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lm2/b;->a:I

    return-void
.end method

.method private static final synthetic a()[Lm2/b;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lm2/b;

    sget-object v1, Lm2/b;->b:Lm2/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lm2/b;->c:Lm2/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lm2/b;
    .locals 1

    const-class v0, Lm2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm2/b;

    return-object p0
.end method

.method public static values()[Lm2/b;
    .locals 1

    sget-object v0, Lm2/b;->d:[Lm2/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm2/b;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lm2/b;->a:I

    return p0
.end method
