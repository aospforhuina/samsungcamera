.class public Lv4/e;
.super Lv4/f;
.source "LogBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv4/f<",
        "Lv4/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv4/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv4/f;->a:Ljava/util/Map;

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failure to build Log : Event name cannot be null"

    .line 2
    invoke-static {v0}, Lk5/d;->s(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "t"

    const-string v1, "ev"

    .line 3
    invoke-virtual {p0, v0, v1}, Lv4/f;->d(Ljava/lang/String;Ljava/lang/String;)Lv4/f;

    .line 4
    invoke-super {p0}, Lv4/f;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic b()Lv4/f;
    .locals 0

    invoke-virtual {p0}, Lv4/e;->e()Lv4/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c()J
    .locals 2

    invoke-super {p0}, Lv4/f;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method protected e()Lv4/e;
    .locals 0

    return-object p0
.end method

.method public f(Ljava/util/Map;)Lv4/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lv4/e;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lz4/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lk5/d$b;->d:Lk5/d$b;

    .line 2
    invoke-static {p1, v0}, Lk5/d;->n(Ljava/util/Map;Lk5/d$b;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cd"

    invoke-virtual {p0, v0, p1}, Lv4/f;->d(Ljava/lang/String;Ljava/lang/String;)Lv4/f;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lv4/e;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failure to build Log : Event id cannot be null"

    .line 2
    invoke-static {v0}, Lk5/d;->s(Ljava/lang/String;)V

    :cond_0
    const-string v0, "en"

    .line 3
    invoke-virtual {p0, v0, p1}, Lv4/f;->d(Ljava/lang/String;Ljava/lang/String;)Lv4/f;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lv4/e;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lv4/e;->g(Ljava/lang/String;)Lv4/e;

    move-result-object p0

    return-object p0
.end method

.method public i(J)Lv4/e;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ev"

    invoke-virtual {p0, p2, p1}, Lv4/f;->d(Ljava/lang/String;Ljava/lang/String;)Lv4/f;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lv4/e;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pn"

    .line 2
    invoke-virtual {p0, v0, p1}, Lv4/f;->d(Ljava/lang/String;Ljava/lang/String;)Lv4/f;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lv4/e;->e()Lv4/e;

    move-result-object p0

    return-object p0
.end method
