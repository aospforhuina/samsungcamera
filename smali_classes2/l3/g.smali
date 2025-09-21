.class public final Ll3/g;
.super Ljava/lang/Object;
.source "OcrWrapper.kt"


# static fields
.field public static final a:Ll3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/g;

    invoke-direct {v0}, Ll3/g;-><init>()V

    sput-object v0, Ll3/g;->a:Ll3/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ll3/g;Landroid/content/Context;Lk4/n;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lk4/n;->b:Lk4/n;

    :cond_0
    invoke-virtual {p0, p1, p2}, Ll3/g;->a(Landroid/content/Context;Lk4/n;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lk4/n;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ocrType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lk4/o;->f(Landroid/content/Context;Lk4/n;)Z

    move-result p0

    return p0
.end method
