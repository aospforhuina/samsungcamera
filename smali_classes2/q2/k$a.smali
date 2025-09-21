.class Lq2/k$a;
.super Lq2/k$c;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/k;->b(Ln2/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/a;ZZ)Lq2/k$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Ln2/w;

.field final synthetic g:Ln2/e;

.field final synthetic h:Lcom/google/gson/reflect/a;

.field final synthetic i:Z

.field final synthetic j:Lq2/k;


# direct methods
.method constructor <init>(Lq2/k;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLn2/w;Ln2/e;Lcom/google/gson/reflect/a;Z)V
    .locals 0

    iput-object p1, p0, Lq2/k$a;->j:Lq2/k;

    iput-object p5, p0, Lq2/k$a;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lq2/k$a;->e:Z

    iput-object p7, p0, Lq2/k$a;->f:Ln2/w;

    iput-object p8, p0, Lq2/k$a;->g:Ln2/e;

    iput-object p9, p0, Lq2/k$a;->h:Lcom/google/gson/reflect/a;

    iput-boolean p10, p0, Lq2/k$a;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lq2/k$c;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Lu2/a;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/k$a;->f:Ln2/w;

    invoke-virtual {v0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lq2/k$a;->i:Z

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object p0, p0, Lq2/k$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method b(Lu2/c;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/k$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lq2/k$a;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq2/k$a;->f:Ln2/w;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lq2/m;

    iget-object v1, p0, Lq2/k$a;->g:Ln2/e;

    iget-object v2, p0, Lq2/k$a;->f:Ln2/w;

    iget-object p0, p0, Lq2/k$a;->h:Lcom/google/gson/reflect/a;

    invoke-virtual {p0}, Lcom/google/gson/reflect/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lq2/m;-><init>(Ln2/e;Ln2/w;Ljava/lang/reflect/Type;)V

    move-object p0, v0

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq2/k$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lq2/k$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
