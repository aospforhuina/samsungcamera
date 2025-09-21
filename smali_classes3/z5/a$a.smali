.class Lz5/a$a;
.super Ljava/lang/Object;
.source "LedBackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lz5/a;


# direct methods
.method constructor <init>(Lz5/a;)V
    .locals 0

    iput-object p1, p0, Lz5/a$a;->a:Lz5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    invoke-static {}, Lz5/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, La6/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    invoke-static {p2}, Ly5/a$a;->a(Landroid/os/IBinder;)Ly5/a;

    move-result-object p2

    invoke-static {p1, p2}, Lz5/a;->b(Lz5/a;Ly5/a;)Ly5/a;

    .line 3
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lz5/a;->d:Z

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    invoke-static {p1}, Lz5/a;->c(Lz5/a;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    invoke-static {p1}, Lz5/a;->c(Lz5/a;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La6/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, La6/a;->b()I

    move-result v0

    if-eq v0, p2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lz5/a$a;->a:Lz5/a;

    invoke-virtual {p1}, La6/a;->f()I

    move-result v3

    invoke-virtual {p1}, La6/a;->g()Z

    move-result v4

    invoke-virtual {p1}, La6/a;->d()I

    move-result v5

    invoke-virtual {p1}, La6/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, La6/a;->e()I

    move-result v7

    invoke-virtual {p1}, La6/a;->a()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lz5/a;->i(IZILjava/lang/String;II)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lz5/a$a;->a:Lz5/a;

    invoke-virtual {p1}, La6/a;->f()I

    move-result v1

    invoke-virtual {p1}, La6/a;->g()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lz5/a;->h(IZ)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p2, p1, Lz5/a;->e:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 10
    iget p2, p1, Lz5/a;->k:I

    invoke-virtual {p1, p2}, Lz5/a;->k(I)Z

    .line 11
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p1, Lz5/a;->e:Z

    .line 12
    :cond_4
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p2, p1, Lz5/a;->f:Z

    if-eqz p2, :cond_5

    .line 13
    iget-boolean p2, p1, Lz5/a;->l:Z

    invoke-virtual {p1, p2}, Lz5/a;->p(Z)Z

    .line 14
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p1, Lz5/a;->f:Z

    .line 15
    :cond_5
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p2, p1, Lz5/a;->g:Z

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p1}, Lz5/a;->d()Z

    .line 17
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p1, Lz5/a;->g:Z

    .line 18
    :cond_6
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p2, p1, Lz5/a;->h:Z

    if-eqz p2, :cond_7

    .line 19
    iget p2, p1, Lz5/a;->o:I

    invoke-virtual {p1, p2}, Lz5/a;->n(I)Z

    .line 20
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p1, Lz5/a;->h:Z

    .line 21
    :cond_7
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p2, p1, Lz5/a;->i:Z

    if-eqz p2, :cond_8

    .line 22
    iget p2, p1, Lz5/a;->p:I

    iget v1, p1, Lz5/a;->q:I

    iget-boolean v2, p1, Lz5/a;->n:Z

    invoke-virtual {p1, p2, v1, v2}, Lz5/a;->o(IIZ)Z

    .line 23
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p1, Lz5/a;->i:Z

    .line 24
    :cond_8
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p2, p1, Lz5/a;->j:Z

    if-eqz p2, :cond_9

    .line 25
    iget-boolean p2, p1, Lz5/a;->m:Z

    invoke-virtual {p1, p2}, Lz5/a;->l(Z)Z

    .line 26
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p1, Lz5/a;->j:Z

    .line 27
    :cond_9
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p2, p1, Lz5/a;->u:Z

    if-eqz p2, :cond_a

    .line 28
    iget p2, p1, Lz5/a;->r:I

    iget v1, p1, Lz5/a;->s:I

    iget v2, p1, Lz5/a;->t:I

    invoke-virtual {p1, p2, v1, v2}, Lz5/a;->g(III)Z

    .line 29
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p1, Lz5/a;->u:Z

    .line 30
    :cond_a
    iget-object v1, p0, Lz5/a$a;->a:Lz5/a;

    iget-boolean p1, v1, Lz5/a;->A:Z

    if-eqz p1, :cond_b

    .line 31
    iget v2, v1, Lz5/a;->v:I

    iget-boolean v3, v1, Lz5/a;->y:Z

    iget v4, v1, Lz5/a;->w:I

    iget v5, v1, Lz5/a;->x:I

    iget-boolean v6, v1, Lz5/a;->z:Z

    invoke-virtual/range {v1 .. v6}, Lz5/a;->e(IZIIZ)Z

    .line 32
    iget-object p0, p0, Lz5/a$a;->a:Lz5/a;

    iput-boolean v0, p0, Lz5/a;->A:Z

    :cond_b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lz5/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, La6/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lz5/a$a;->a:Lz5/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lz5/a;->b(Lz5/a;Ly5/a;)Ly5/a;

    .line 3
    iget-object p0, p0, Lz5/a$a;->a:Lz5/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz5/a;->d:Z

    return-void
.end method
