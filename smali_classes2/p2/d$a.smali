.class Lp2/d$a;
.super Ln2/w;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/d;->a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ln2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ln2/e;

.field final synthetic e:Lcom/google/gson/reflect/a;

.field final synthetic f:Lp2/d;


# direct methods
.method constructor <init>(Lp2/d;ZZLn2/e;Lcom/google/gson/reflect/a;)V
    .locals 0

    iput-object p1, p0, Lp2/d$a;->f:Lp2/d;

    iput-boolean p2, p0, Lp2/d$a;->b:Z

    iput-boolean p3, p0, Lp2/d$a;->c:Z

    iput-object p4, p0, Lp2/d$a;->d:Ln2/e;

    iput-object p5, p0, Lp2/d$a;->e:Lcom/google/gson/reflect/a;

    invoke-direct {p0}, Ln2/w;-><init>()V

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
    iget-object v0, p0, Lp2/d$a;->a:Ln2/w;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lp2/d$a;->d:Ln2/e;

    iget-object v1, p0, Lp2/d$a;->f:Lp2/d;

    iget-object v2, p0, Lp2/d$a;->e:Lcom/google/gson/reflect/a;

    invoke-virtual {v0, v1, v2}, Ln2/e;->m(Ln2/x;Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object v0

    iput-object v0, p0, Lp2/d$a;->a:Ln2/w;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Lu2/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp2/d$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lu2/a;->V()V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lp2/d$a;->e()Ln2/w;

    move-result-object p0

    invoke-virtual {p0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lu2/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/c;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp2/d$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lp2/d$a;->e()Ln2/w;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    return-void
.end method
