.class final Lg7/a$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "ChannelFlow.kt"

# interfaces
.implements Lu6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a;->b(Lg7/a;Lf7/e;Ln6/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Lu6/p<",
        "Lc7/g0;",
        "Ln6/d<",
        "-",
        "Lk6/q;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lf7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf7/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lg7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lf7/e;Lg7/a;Ln6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf7/e<",
            "-TT;>;",
            "Lg7/a<",
            "TT;>;",
            "Ln6/d<",
            "-",
            "Lg7/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$a;->c:Lf7/e;

    iput-object p2, p0, Lg7/a$a;->d:Lg7/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILn6/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lc7/g0;Ln6/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/g0;",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg7/a$a;->create(Ljava/lang/Object;Ln6/d;)Ln6/d;

    move-result-object p0

    check-cast p0, Lg7/a$a;

    sget-object p1, Lk6/q;->a:Lk6/q;

    invoke-virtual {p0, p1}, Lg7/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/Object;Ln6/d;)Ln6/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ln6/d<",
            "*>;)",
            "Ln6/d<",
            "Lk6/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg7/a$a;

    iget-object v1, p0, Lg7/a$a;->c:Lf7/e;

    iget-object p0, p0, Lg7/a$a;->d:Lg7/a;

    invoke-direct {v0, v1, p0, p2}, Lg7/a$a;-><init>(Lf7/e;Lg7/a;Ln6/d;)V

    iput-object p1, v0, Lg7/a$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc7/g0;

    check-cast p2, Ln6/d;

    invoke-virtual {p0, p1, p2}, Lg7/a$a;->a(Lc7/g0;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lg7/a$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lk6/l;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lk6/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lg7/a$a;->b:Ljava/lang/Object;

    check-cast p1, Lc7/g0;

    .line 4
    iget-object v1, p0, Lg7/a$a;->c:Lf7/e;

    iget-object v3, p0, Lg7/a$a;->d:Lg7/a;

    invoke-virtual {v3, p1}, Lg7/a;->f(Lc7/g0;)Le7/u;

    move-result-object p1

    iput v2, p0, Lg7/a$a;->a:I

    invoke-static {v1, p1, p0}, Lf7/f;->c(Lf7/e;Le7/u;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method
