.class public Ld5/b;
.super Lc5/a;
.source "DLSLogSender.java"


# instance fields
.field private final e:Ly4/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv4/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc5/a;-><init>(Landroid/content/Context;Lv4/c;)V

    .line 2
    invoke-static {p1}, Ly4/a;->b(Landroid/content/Context;)Ly4/a;

    move-result-object p1

    iput-object p1, p0, Ld5/b;->e:Ly4/a;

    return-void
.end method

.method static synthetic f(Ld5/b;)Lf5/a;
    .locals 0

    iget-object p0, p0, Lc5/a;->c:Lf5/a;

    return-object p0
.end method

.method static synthetic g(Ld5/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lc5/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private h(I)I
    .locals 2

    const-string v0, "DLS Sender"

    const/4 v1, -0x4

    if-ne p1, v1, :cond_0

    const-string p0, "Network unavailable."

    .line 1
    invoke-static {v0, p0}, Lk5/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lc5/a;->a:Landroid/content/Context;

    invoke-static {p0}, Lz4/b;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "policy expired. request policy"

    .line 3
    invoke-static {v0, p0}, Lk5/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x6

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private i(ILc5/c;Ljava/util/Queue;Lb6/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc5/c;",
            "Ljava/util/Queue<",
            "Lc5/f;",
            ">;",
            "Lb6/a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 5
    iget-object v3, p0, Lc5/a;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Lz4/b;->d(Landroid/content/Context;I)I

    move-result v3

    const v4, 0xc800

    .line 6
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v9, v4

    .line 7
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc5/f;

    .line 9
    invoke-virtual {v4}, Lc5/f;->d()Lc5/c;

    move-result-object v5

    if-eq v5, p2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Lc5/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v9

    if-le v5, v3, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v4}, Lc5/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v9, v5

    .line 12
    invoke-interface {v2, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 14
    invoke-virtual {v4}, Lc5/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    iget-object p3, p0, Lc5/a;->c:Lf5/a;

    invoke-virtual {p3, v0}, Lf5/a;->k(Ljava/util/List;)V

    .line 17
    iget-object p3, p0, Lc5/a;->c:Lf5/a;

    const/16 v1, 0xc8

    invoke-virtual {p3, v1}, Lf5/a;->e(I)Ljava/util/Queue;

    move-result-object p3

    .line 18
    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    .line 19
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 20
    :cond_4
    iget-object v3, p0, Lc5/a;->c:Lf5/a;

    invoke-virtual {v3, v0}, Lf5/a;->k(Ljava/util/List;)V

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, v2

    move v7, v9

    move-object v8, p4

    .line 21
    invoke-direct/range {v3 .. v8}, Ld5/b;->l(ILc5/c;Ljava/util/Queue;ILb6/a;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send packet : num("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") size("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLSLogSender"

    invoke-static {v3, v2}, Lk5/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private j()I
    .locals 1

    .line 1
    iget-object p0, p0, Lc5/a;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x4

    return p0
.end method

.method private k(ILc5/f;Lb6/a;)I
    .locals 2

    if-nez p2, :cond_0

    const/16 p0, -0x64

    return p0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lc5/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 2
    iget-object v1, p0, Lc5/a;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lz4/b;->g(Landroid/content/Context;II)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v1, p0, Lc5/a;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lz4/b;->n(Landroid/content/Context;II)V

    .line 4
    new-instance p1, Ld5/a;

    iget-object v0, p0, Lc5/a;->b:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3}, Ld5/a;-><init>(Lc5/f;Ljava/lang/String;Lb6/a;)V

    .line 5
    iget-object p0, p0, Lc5/a;->d:Lb6/c;

    invoke-interface {p0, p1}, Lb6/c;->a(Lb6/b;)V

    const/4 p0, 0x0

    return p0
.end method

.method private l(ILc5/c;Ljava/util/Queue;ILb6/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc5/c;",
            "Ljava/util/Queue<",
            "Lc5/f;",
            ">;I",
            "Lb6/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lz4/b;->n(Landroid/content/Context;II)V

    .line 2
    iget-object p1, p0, Lc5/a;->d:Lb6/c;

    new-instance p4, Ld5/a;

    iget-object p0, p0, Lc5/a;->b:Lv4/c;

    .line 3
    invoke-virtual {p0}, Lv4/c;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p2, p3, p0, p5}, Ld5/a;-><init>(Lc5/c;Ljava/util/Queue;Ljava/lang/String;Lb6/a;)V

    .line 4
    invoke-interface {p1, p4}, Lb6/c;->a(Lb6/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ld5/b;->j()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Ld5/b;->h(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lc5/a;->c(Ljava/util/Map;)V

    const/4 p1, -0x6

    if-ne v1, p1, :cond_0

    .line 4
    iget-object p1, p0, Lc5/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lc5/a;->b:Lv4/c;

    iget-object v2, p0, Lc5/a;->d:Lb6/c;

    iget-object v3, p0, Ld5/b;->e:Ly4/a;

    invoke-static {p1, v0, v2, v3}, Lz4/b;->l(Landroid/content/Context;Lv4/c;Lb6/c;Ly4/a;)V

    .line 5
    iget-object p0, p0, Lc5/a;->c:Lf5/a;

    invoke-virtual {p0}, Lf5/a;->a()V

    :cond_0
    return v1

    .line 6
    :cond_1
    new-instance v1, Ld5/b$a;

    invoke-direct {v1, p0, v0}, Ld5/b$a;-><init>(Ld5/b;I)V

    .line 7
    new-instance v2, Lc5/f;

    const-string/jumbo v3, "ts"

    .line 8
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, p1}, Ld5/b;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v5}, Lc5/a;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lc5/a;->b(Ljava/util/Map;)Lc5/c;

    move-result-object p1

    invoke-direct {v2, v3, v4, v5, p1}, Lc5/f;-><init>(JLjava/lang/String;Lc5/c;)V

    .line 9
    invoke-direct {p0, v0, v2, v1}, Ld5/b;->k(ILc5/f;Lb6/a;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return p1

    .line 10
    :cond_2
    iget-object v3, p0, Lc5/a;->c:Lf5/a;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lf5/a;->e(I)Ljava/util/Queue;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lc5/a;->c:Lf5/a;

    invoke-virtual {v4}, Lf5/a;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    sget-object v2, Lc5/c;->c:Lc5/c;

    invoke-direct {p0, v0, v2, v3, v1}, Ld5/b;->i(ILc5/c;Ljava/util/Queue;Lb6/a;)V

    .line 13
    sget-object v2, Lc5/c;->b:Lc5/c;

    invoke-direct {p0, v0, v2, v3, v1}, Ld5/b;->i(ILc5/c;Ljava/util/Queue;Lb6/a;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 15
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc5/f;

    .line 16
    invoke-direct {p0, v0, p1, v1}, Ld5/b;->k(ILc5/f;Lb6/a;)I

    move-result p1

    if-ne p1, v2, :cond_3

    :cond_4
    :goto_0
    return p1
.end method

.method protected e(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "la"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dm"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lc5/a;->b:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "do"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lc5/a;->a:Landroid/content/Context;

    invoke-static {v0}, Ld6/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "av"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lc5/a;->b:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lc5/a;->b:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "at"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Ld5/b;->e:Ly4/a;

    invoke-virtual {v0}, Ly4/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p0, p0, Lc5/a;->b:Lv4/c;

    invoke-virtual {p0}, Lv4/c;->f()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "tid"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "tz"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
