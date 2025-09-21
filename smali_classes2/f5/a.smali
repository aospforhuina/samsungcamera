.class public Lf5/a;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field private static d:Lf5/a;


# instance fields
.field private a:Lg5/a;

.field private b:Lh5/a;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lg5/a;

    invoke-direct {v0, p1}, Lg5/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf5/a;->a:Lg5/a;

    .line 3
    :cond_0
    new-instance p1, Lh5/a;

    invoke-direct {p1}, Lh5/a;-><init>()V

    iput-object p1, p0, Lf5/a;->b:Lh5/a;

    .line 4
    iput-boolean p2, p0, Lf5/a;->c:Z

    return-void
.end method

.method private constructor <init>(Lv4/d;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lg5/a;

    invoke-direct {v0, p1}, Lg5/a;-><init>(Lv4/d;)V

    iput-object v0, p0, Lf5/a;->a:Lg5/a;

    .line 7
    new-instance p1, Lh5/a;

    invoke-direct {p1}, Lh5/a;-><init>()V

    iput-object p1, p0, Lf5/a;->b:Lh5/a;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lf5/a;->c:Z

    return-void
.end method

.method public static f(Landroid/content/Context;Lv4/c;)Lf5/a;
    .locals 5

    .line 1
    sget-object v0, Lf5/a;->d:Lf5/a;

    if-nez v0, :cond_4

    .line 2
    const-class v0, Lf5/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lf5/a;->d:Lf5/a;

    if-nez v1, :cond_3

    .line 4
    invoke-static {}, Lz4/b;->e()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lgt"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rtb"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lv4/c;->c()Lv4/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p0, Lf5/a;

    invoke-direct {p0, p1}, Lf5/a;-><init>(Lv4/d;)V

    sput-object p0, Lf5/a;->d:Lf5/a;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lf5/a;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lf5/a;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lf5/a;->d:Lf5/a;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lf5/a;

    invoke-direct {p1, p0, v2}, Lf5/a;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lf5/a;->d:Lf5/a;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lf5/a;

    invoke-direct {p1, p0, v2}, Lf5/a;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lf5/a;->d:Lf5/a;

    .line 12
    :cond_3
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_4
    :goto_1
    sget-object p0, Lf5/a;->d:Lf5/a;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf5/a;->b:Lh5/a;

    invoke-virtual {v0}, Lh5/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf5/a;->b:Lh5/a;

    invoke-virtual {v0}, Lh5/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/f;

    .line 3
    iget-object v2, p0, Lf5/a;->a:Lg5/a;

    invoke-virtual {v2, v1}, Lg5/a;->c(Lc5/f;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lf5/a;->b:Lh5/a;

    invoke-virtual {p0}, Lh5/a;->a()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf5/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lf5/a;->a:Lg5/a;

    const/4 v0, 0x5

    invoke-static {v0}, Lk5/d;->d(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lg5/a;->a(J)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lg5/a;

    invoke-direct {v0, p1}, Lg5/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lf5/a;->c(Lg5/a;)V

    return-void
.end method

.method public c(Lg5/a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf5/a;->c:Z

    .line 2
    iput-object p1, p0, Lf5/a;->a:Lg5/a;

    .line 3
    invoke-direct {p0}, Lf5/a;->j()V

    return-void
.end method

.method public d()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lc5/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf5/a;->e(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method public e(I)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lc5/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf5/a;->c:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf5/a;->a()V

    if-gtz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf5/a;->a:Lg5/a;

    invoke-virtual {p1}, Lg5/a;->e()Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf5/a;->a:Lg5/a;

    invoke-virtual {v0, p1}, Lg5/a;->f(I)Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lf5/a;->b:Lh5/a;

    invoke-virtual {p1}, Lh5/a;->a()Ljava/util/Queue;

    move-result-object p1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get log from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lf5/a;->c:Z

    if-eqz p0, :cond_2

    const-string p0, "Database "

    goto :goto_1

    :cond_2
    const-string p0, "Queue "

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk5/b;->d(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public g(JLjava/lang/String;Lc5/c;)V
    .locals 1

    .line 1
    new-instance v0, Lc5/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lc5/f;-><init>(JLjava/lang/String;Lc5/c;)V

    .line 2
    invoke-virtual {p0, v0}, Lf5/a;->h(Lc5/f;)V

    return-void
.end method

.method public h(Lc5/f;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf5/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lf5/a;->a:Lg5/a;

    invoke-virtual {p0, p1}, Lg5/a;->c(Lc5/f;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lf5/a;->b:Lh5/a;

    invoke-virtual {p0, p1}, Lh5/a;->b(Lc5/f;)V

    :goto_0
    return-void
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lf5/a;->c:Z

    return p0
.end method

.method public k(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf5/a;->c:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lf5/a;->a:Lg5/a;

    invoke-virtual {p0, p1}, Lg5/a;->b(Ljava/util/List;)V

    :cond_1
    return-void
.end method
