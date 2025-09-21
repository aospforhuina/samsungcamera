.class final Lkotlinx/coroutines/internal/e0$c;
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
        "Lkotlinx/coroutines/internal/h0;",
        "Ln6/g$b;",
        "Lkotlinx/coroutines/internal/h0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/e0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/e0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/e0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/e0$c;->a:Lkotlinx/coroutines/internal/e0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/h0;Ln6/g$b;)Lkotlinx/coroutines/internal/h0;
    .locals 0

    .line 1
    instance-of p0, p2, Lc7/d2;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Lc7/d2;

    iget-object p0, p1, Lkotlinx/coroutines/internal/h0;->a:Ln6/g;

    invoke-interface {p2, p0}, Lc7/d2;->o(Ln6/g;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/internal/h0;->a(Lc7/d2;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/h0;

    check-cast p2, Ln6/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/e0$c;->a(Lkotlinx/coroutines/internal/h0;Ln6/g$b;)Lkotlinx/coroutines/internal/h0;

    move-result-object p0

    return-object p0
.end method
