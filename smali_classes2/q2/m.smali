.class final Lq2/m;
.super Ln2/w;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
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
.field private final a:Ln2/e;

.field private final b:Ln2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ln2/e;Ln2/w;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e;",
            "Ln2/w<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln2/w;-><init>()V

    .line 2
    iput-object p1, p0, Lq2/m;->a:Ln2/e;

    .line 3
    iput-object p2, p0, Lq2/m;->b:Ln2/w;

    .line 4
    iput-object p3, p0, Lq2/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method private e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    const-class p0, Ljava/lang/Object;

    if-eq p1, p0, :cond_0

    instance-of p0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez p0, :cond_0

    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public b(Lu2/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/a;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lq2/m;->b:Ln2/w;

    invoke-virtual {p0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lu2/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/c;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq2/m;->b:Ln2/w;

    .line 2
    iget-object v1, p0, Lq2/m;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lq2/m;->e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lq2/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v0, p0, Lq2/m;->a:Ln2/e;

    invoke-static {v1}, Lcom/google/gson/reflect/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln2/e;->k(Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lq2/k$b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lq2/m;->b:Ln2/w;

    instance-of v1, p0, Lq2/k$b;

    if-nez v1, :cond_1

    move-object v0, p0

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    return-void
.end method
