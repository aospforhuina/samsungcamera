.class final Lf7/c$a;
.super Ljava/lang/Object;
.source "Distinct.kt"

# interfaces
.implements Lf7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/c;->collect(Lf7/e;Ln6/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf7/e;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf7/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/jvm/internal/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/w<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lf7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf7/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lf7/c;Lkotlin/jvm/internal/w;Lf7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf7/c<",
            "TT;>;",
            "Lkotlin/jvm/internal/w<",
            "Ljava/lang/Object;",
            ">;",
            "Lf7/e<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lf7/c$a;->a:Lf7/c;

    iput-object p2, p0, Lf7/c$a;->b:Lkotlin/jvm/internal/w;

    iput-object p3, p0, Lf7/c$a;->c:Lf7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ln6/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lf7/c$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf7/c$a$a;

    iget v1, v0, Lf7/c$a$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf7/c$a$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf7/c$a$a;

    invoke-direct {v0, p0, p2}, Lf7/c$a$a;-><init>(Lf7/c$a;Ln6/d;)V

    :goto_0
    iget-object p2, v0, Lf7/c$a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lf7/c$a$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lk6/l;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lk6/l;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lf7/c$a;->a:Lf7/c;

    iget-object p2, p2, Lf7/c;->b:Lu6/l;

    invoke-interface {p2, p1}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    iget-object v2, p0, Lf7/c$a;->b:Lkotlin/jvm/internal/w;

    iget-object v2, v2, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    sget-object v4, Lg7/b;->a:Lkotlinx/coroutines/internal/a0;

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Lf7/c$a;->a:Lf7/c;

    iget-object v4, v4, Lf7/c;->c:Lu6/p;

    invoke-interface {v4, v2, p2}, Lu6/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0

    .line 7
    :cond_4
    :goto_1
    iget-object v2, p0, Lf7/c$a;->b:Lkotlin/jvm/internal/w;

    iput-object p2, v2, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    .line 8
    iget-object p0, p0, Lf7/c$a;->c:Lf7/e;

    iput v3, v0, Lf7/c$a$a;->c:I

    invoke-interface {p0, p1, v0}, Lf7/e;->emit(Ljava/lang/Object;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method
