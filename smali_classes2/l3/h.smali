.class public abstract enum Ll3/h;
.super Ljava/lang/Enum;
.source "VisionOCRLanguage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/h$b;,
        Ll3/h$a;,
        Ll3/h$c;,
        Ll3/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll3/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ll3/h$b;

.field public static final enum c:Ll3/h;

.field public static final enum d:Ll3/h;

.field public static final enum f:Ll3/h;

.field private static final synthetic g:[Ll3/h;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ll3/h$a;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll3/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll3/h;->c:Ll3/h;

    .line 2
    new-instance v0, Ll3/h$c;

    const-string v1, "English"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll3/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll3/h;->d:Ll3/h;

    .line 3
    new-instance v0, Ll3/h$d;

    const-string v1, "Korean"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ll3/h$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll3/h;->f:Ll3/h;

    invoke-static {}, Ll3/h;->a()[Ll3/h;

    move-result-object v0

    sput-object v0, Ll3/h;->g:[Ll3/h;

    new-instance v0, Ll3/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/h$b;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ll3/h;->b:Ll3/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ll3/h;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ll3/h;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private static final synthetic a()[Ll3/h;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ll3/h;

    sget-object v1, Ll3/h;->c:Ll3/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ll3/h;->d:Ll3/h;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ll3/h;->f:Ll3/h;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ll3/h;
    .locals 1

    const-class v0, Ll3/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll3/h;

    return-object p0
.end method

.method public static values()[Ll3/h;
    .locals 1

    sget-object v0, Ll3/h;->g:[Ll3/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll3/h;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lk4/i;
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Ll3/h;->a:I

    return p0
.end method
