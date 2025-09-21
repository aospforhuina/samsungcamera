.class public final Lc7/f2;
.super Lc7/c0;
.source "Unconfined.kt"


# static fields
.field public static final a:Lc7/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/f2;

    invoke-direct {v0}, Lc7/f2;-><init>()V

    sput-object v0, Lc7/f2;->a:Lc7/f2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc7/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ln6/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p0, Lc7/i2;->b:Lc7/i2$a;

    invoke-interface {p1, p0}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    check-cast p0, Lc7/i2;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lc7/i2;->a:Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDispatchNeeded(Ln6/g;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public limitedParallelism(I)Lc7/c0;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method
