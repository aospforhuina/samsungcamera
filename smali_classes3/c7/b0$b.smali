.class final Lc7/b0$b;
.super Lkotlin/jvm/internal/m;
.source "CoroutineContext.kt"

# interfaces
.implements Lu6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/b0;->a(Ln6/g;Ln6/g;Z)Ln6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/p<",
        "Ln6/g;",
        "Ln6/g$b;",
        "Ln6/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/w<",
            "Ln6/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/w;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/w<",
            "Ln6/g;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lc7/b0$b;->a:Lkotlin/jvm/internal/w;

    iput-boolean p2, p0, Lc7/b0$b;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ln6/g;Ln6/g$b;)Ln6/g;
    .locals 3

    .line 1
    instance-of v0, p2, Lc7/a0;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lc7/b0$b;->a:Lkotlin/jvm/internal/w;

    iget-object v0, v0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    check-cast v0, Ln6/g;

    invoke-interface {p2}, Ln6/g$b;->getKey()Ln6/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    iget-boolean p0, p0, Lc7/b0$b;->b:Z

    if-eqz p0, :cond_1

    check-cast p2, Lc7/a0;

    invoke-interface {p2}, Lc7/a0;->p()Lc7/a0;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p2

    check-cast p0, Lc7/a0;

    :goto_0
    invoke-interface {p1, p0}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    iget-object p0, p0, Lc7/b0$b;->a:Lkotlin/jvm/internal/w;

    iget-object v1, p0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    check-cast v1, Ln6/g;

    invoke-interface {p2}, Ln6/g$b;->getKey()Ln6/g$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ln6/g;->minusKey(Ln6/g$c;)Ln6/g;

    move-result-object v1

    iput-object v1, p0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    .line 5
    check-cast p2, Lc7/a0;

    invoke-interface {p2, v0}, Lc7/a0;->h(Ln6/g$b;)Ln6/g;

    move-result-object p0

    invoke-interface {p1, p0}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln6/g;

    check-cast p2, Ln6/g$b;

    invoke-virtual {p0, p1, p2}, Lc7/b0$b;->a(Ln6/g;Ln6/g$b;)Ln6/g;

    move-result-object p0

    return-object p0
.end method
