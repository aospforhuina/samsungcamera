.class public final enum Lh/a0;
.super Ljava/lang/Enum;
.source "RenderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lh/a0;

.field public static final enum b:Lh/a0;

.field public static final enum c:Lh/a0;

.field private static final synthetic d:[Lh/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lh/a0;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh/a0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/a0;->a:Lh/a0;

    .line 2
    new-instance v1, Lh/a0;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh/a0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh/a0;->b:Lh/a0;

    .line 3
    new-instance v3, Lh/a0;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lh/a0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lh/a0;->c:Lh/a0;

    const/4 v5, 0x3

    new-array v5, v5, [Lh/a0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lh/a0;->d:[Lh/a0;

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

.method public static valueOf(Ljava/lang/String;)Lh/a0;
    .locals 1

    const-class v0, Lh/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/a0;

    return-object p0
.end method

.method public static values()[Lh/a0;
    .locals 1

    sget-object v0, Lh/a0;->d:[Lh/a0;

    invoke-virtual {v0}, [Lh/a0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/a0;

    return-object v0
.end method


# virtual methods
.method public a(IZI)Z
    .locals 3

    sget-object v0, Lh/a0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    if-eqz p2, :cond_0

    const/16 p0, 0x1c

    if-ge p1, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    if-le p3, p0, :cond_1

    return v1

    :cond_1
    const/16 p0, 0x19

    if-gt p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method
