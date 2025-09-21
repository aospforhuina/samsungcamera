.class public final Lq2/l;
.super Ln2/w;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/l$b;,
        Lq2/l$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln2/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ln2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ln2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ln2/e;

.field private final d:Lcom/google/gson/reflect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ln2/x;

.field private final f:Lq2/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq2/l<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private volatile g:Ln2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln2/r;Ln2/j;Ln2/e;Lcom/google/gson/reflect/a;Ln2/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/r<",
            "TT;>;",
            "Ln2/j<",
            "TT;>;",
            "Ln2/e;",
            "Lcom/google/gson/reflect/a<",
            "TT;>;",
            "Ln2/x;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln2/w;-><init>()V

    .line 2
    new-instance v0, Lq2/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq2/l$b;-><init>(Lq2/l;Lq2/l$a;)V

    iput-object v0, p0, Lq2/l;->f:Lq2/l$b;

    .line 3
    iput-object p1, p0, Lq2/l;->a:Ln2/r;

    .line 4
    iput-object p2, p0, Lq2/l;->b:Ln2/j;

    .line 5
    iput-object p3, p0, Lq2/l;->c:Ln2/e;

    .line 6
    iput-object p4, p0, Lq2/l;->d:Lcom/google/gson/reflect/a;

    .line 7
    iput-object p5, p0, Lq2/l;->e:Ln2/x;

    return-void
.end method

.method private e()Ln2/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq2/l;->g:Ln2/w;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lq2/l;->c:Ln2/e;

    iget-object v1, p0, Lq2/l;->e:Ln2/x;

    iget-object v2, p0, Lq2/l;->d:Lcom/google/gson/reflect/a;

    invoke-virtual {v0, v1, v2}, Ln2/e;->m(Ln2/x;Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object v0

    iput-object v0, p0, Lq2/l;->g:Ln2/w;

    :goto_0
    return-object v0
.end method

.method public static f(Lcom/google/gson/reflect/a;Ljava/lang/Object;)Ln2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/reflect/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ln2/x;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/reflect/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/reflect/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Lq2/l$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lq2/l$c;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/a;ZLjava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method public b(Lu2/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq2/l;->b:Ln2/j;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lq2/l;->e()Ln2/w;

    move-result-object p0

    invoke-virtual {p0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lp2/l;->a(Lu2/a;)Ln2/k;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ln2/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    iget-object v0, p0, Lq2/l;->b:Ln2/j;

    iget-object v1, p0, Lq2/l;->d:Lcom/google/gson/reflect/a;

    invoke-virtual {v1}, Lcom/google/gson/reflect/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object p0, p0, Lq2/l;->f:Lq2/l$b;

    invoke-interface {v0, p1, v1, p0}, Ln2/j;->deserialize(Ln2/k;Ljava/lang/reflect/Type;Ln2/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lu2/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/c;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq2/l;->a:Ln2/r;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lq2/l;->e()Ln2/w;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lq2/l;->d:Lcom/google/gson/reflect/a;

    invoke-virtual {v1}, Lcom/google/gson/reflect/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object p0, p0, Lq2/l;->f:Lq2/l$b;

    invoke-interface {v0, p2, v1, p0}, Ln2/r;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Ln2/q;)Ln2/k;

    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lp2/l;->b(Ln2/k;Lu2/c;)V

    return-void
.end method
