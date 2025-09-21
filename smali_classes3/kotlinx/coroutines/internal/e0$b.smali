.class final Lkotlinx/coroutines/internal/e0$b;
.super Lkotlin/jvm/internal/m;
.source "ThreadContext.kt"

# interfaces
.implements Lu6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/p<",
        "Lc7/d2<",
        "*>;",
        "Ln6/g$b;",
        "Lc7/d2<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/e0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/e0$b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/e0$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/e0$b;->a:Lkotlinx/coroutines/internal/e0$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc7/d2;Ln6/g$b;)Lc7/d2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/d2<",
            "*>;",
            "Ln6/g$b;",
            ")",
            "Lc7/d2<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    instance-of p0, p2, Lc7/d2;

    if-eqz p0, :cond_1

    check-cast p2, Lc7/d2;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc7/d2;

    check-cast p2, Ln6/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/e0$b;->a(Lc7/d2;Ln6/g$b;)Lc7/d2;

    move-result-object p0

    return-object p0
.end method
