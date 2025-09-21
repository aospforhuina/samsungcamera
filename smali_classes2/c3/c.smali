.class public final Lc3/c;
.super Ljava/lang/Object;
.source "Injector.kt"


# static fields
.field public static final a:Lc3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc3/c;

    invoke-direct {v0}, Lc3/c;-><init>()V

    sput-object v0, Lc3/c;->a:Lc3/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lc3/a;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lc3/b;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lc3/b;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/g;)V

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Lc3/d;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lc3/e;

    invoke-direct {p0, p1}, Lc3/e;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
