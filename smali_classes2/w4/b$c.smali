.class Lw4/b$c;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Lb6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/b;->y(Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lw4/b;


# direct methods
.method constructor <init>(Lw4/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lw4/b$c;->b:Lw4/b;

    iput-object p2, p0, Lw4/b$c;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lk5/d;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->j(Lw4/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "user do not agree"

    .line 3
    invoke-static {p0}, Lk5/b;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lw4/b$c;->a:Ljava/util/Map;

    const-string v1, "pd"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lw4/b$c;->a:Ljava/util/Map;

    const-string v1, "ps"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Lw4/b$c;->a:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->k(Lw4/b;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lw4/b$c;->a:Ljava/util/Map;

    const-string/jumbo v1, "t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "pp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v0

    new-instance v1, La5/b;

    iget-object v2, p0, Lw4/b$c;->b:Lw4/b;

    .line 10
    invoke-static {v2}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lw4/b$c;->a:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, La5/b;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 11
    invoke-interface {v0, v1}, Lb6/c;->a(Lb6/b;)V

    .line 12
    iget-object v0, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {p0}, Lw4/b;->l(Lw4/b;)Lv4/c;

    move-result-object p0

    invoke-static {v0, p0}, Lk5/d;->q(Landroid/content/Context;Lv4/c;)V

    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lw4/b$c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p0, Lw4/b$c;->a:Ljava/util/Map;

    const-string v1, "et"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0xb

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    :cond_5
    iget-object v0, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lk5/c;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "guid"

    const-string v2, ""

    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 20
    iget-object v2, p0, Lw4/b$c;->a:Ljava/util/Map;

    const-string v3, "cd"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 23
    :cond_6
    sget-object v4, Lk5/d$b;->d:Lk5/d$b;

    invoke-static {v2, v4}, Lk5/d;->o(Ljava/lang/String;Lk5/d$b;)Ljava/util/Map;

    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lw4/b$c;->a:Ljava/util/Map;

    .line 26
    invoke-static {v2}, Lz4/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lk5/d$b;->d:Lk5/d$b;

    .line 27
    invoke-static {v1, v2}, Lk5/d;->n(Ljava/util/Map;Lk5/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_7
    iget-object v0, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->c(Lw4/b;)Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lz4/b;->e()I

    move-result v1

    iget-object v2, p0, Lw4/b$c;->b:Lw4/b;

    invoke-static {v2}, Lw4/b;->l(Lw4/b;)Lv4/c;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc5/d;->a(Landroid/content/Context;ILv4/c;)Lc5/b;

    move-result-object v0

    iget-object p0, p0, Lw4/b$c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Lc5/b;->a(Ljava/util/Map;)I

    return-void

    :cond_8
    :goto_1
    const-string p0, "Failure to send Logs : No data"

    .line 29
    invoke-static {p0}, Lk5/b;->a(Ljava/lang/String;)V

    return-void
.end method
