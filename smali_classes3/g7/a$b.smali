.class final Lg7/a$b;
.super Lkotlin/coroutines/jvm/internal/k;
.source "ChannelFlow.kt"

# interfaces
.implements Lu6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a;->d()Lu6/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Lu6/p<",
        "Le7/s<",
        "-TT;>;",
        "Ln6/d<",
        "-",
        "Lk6/q;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1"
    f = "ChannelFlow.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lg7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg7/a;Ln6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "TT;>;",
            "Ln6/d<",
            "-",
            "Lg7/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$b;->c:Lg7/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILn6/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ln6/d;)Ln6/d;
    .locals 1
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

    new-instance v0, Lg7/a$b;

    iget-object p0, p0, Lg7/a$b;->c:Lg7/a;

    invoke-direct {v0, p0, p2}, Lg7/a$b;-><init>(Lg7/a;Ln6/d;)V

    iput-object p1, v0, Lg7/a$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Le7/s;Ln6/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/s<",
            "-TT;>;",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg7/a$b;->create(Ljava/lang/Object;Ln6/d;)Ln6/d;

    move-result-object p0

    check-cast p0, Lg7/a$b;

    sget-object p1, Lk6/q;->a:Lk6/q;

    invoke-virtual {p0, p1}, Lg7/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le7/s;

    check-cast p2, Ln6/d;

    invoke-virtual {p0, p1, p2}, Lg7/a$b;->invoke(Le7/s;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lg7/a$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lk6/l;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lk6/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lg7/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le7/s;

    iget-object v1, p0, Lg7/a$b;->c:Lg7/a;

    iput v2, p0, Lg7/a$b;->a:I

    invoke-virtual {v1, p1, p0}, Lg7/a;->c(Le7/s;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method
