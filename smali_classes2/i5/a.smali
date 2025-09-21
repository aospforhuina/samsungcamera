.class public Li5/a;
.super Ljava/lang/Object;
.source "SettingLogBuildClient.java"

# interfaces
.implements Lb6/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lv4/c;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv4/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li5/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Li5/a;->b:Lv4/c;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-object v1, p0, Li5/a;->b:Lv4/c;

    invoke-virtual {v1}, Lv4/c;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tcType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object v1, p0, Li5/a;->b:Lv4/c;

    invoke-virtual {v1}, Lv4/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lc5/c;->c:Lc5/c;

    invoke-virtual {v1}, Lc5/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "timeStamp"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Li5/a;->b:Lv4/c;

    invoke-virtual {p1}, Lv4/c;->g()Lv4/k;

    move-result-object p1

    invoke-interface {p1}, Lv4/k;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "agree"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget-object p1, p0, Li5/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lk5/d;->l(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Li5/a;->a:Landroid/content/Context;

    iget-object v1, p0, Li5/a;->b:Lv4/c;

    invoke-static {p1, v0, v1}, Lk5/d;->a(Landroid/content/Context;Landroid/content/ContentValues;Lv4/c;)V

    .line 9
    :cond_0
    iget-object p1, p0, Li5/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lk5/d;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Li5/a;->b:Lv4/c;

    invoke-virtual {p1}, Lv4/c;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "networkType"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string/jumbo p1, "v"

    const-string v1, "6.05.055"

    .line 11
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tz"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content://com.sec.android.log.diagmonagent.sa/log"

    .line 15
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 16
    iget-object v1, p0, Li5/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "sti"

    .line 17
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v2, Lk5/d$b;->c:Lk5/d$b;

    invoke-static {p2, v2}, Lk5/d;->n(Ljava/util/Map;Lk5/d$b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :try_start_0
    iget-object v2, p0, Li5/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_3

    return v3

    .line 20
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private b(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sti"

    .line 2
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Li5/a;->a:Landroid/content/Context;

    invoke-static {}, Lz4/b;->e()I

    move-result v2

    iget-object v3, p0, Li5/a;->b:Lv4/c;

    invoke-static {v1, v2, v3}, Lc5/d;->a(Landroid/content/Context;ILv4/c;)Lc5/b;

    move-result-object v1

    invoke-interface {v1, p1}, Lc5/b;->a(Ljava/util/Map;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onFinish()I
    .locals 8

    .line 1
    iget-object v0, p0, Li5/a;->b:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->g()Lv4/k;

    move-result-object v0

    invoke-interface {v0}, Lv4/k;->a()Z

    move-result v0

    .line 2
    iget-object v1, p0, Li5/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lk5/d;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const-string/jumbo p0, "user do not agree setting"

    .line 3
    invoke-static {p0}, Lk5/b;->a(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    iget-object v0, p0, Li5/a;->c:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    iget-object v0, p0, Li5/a;->b:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Li5/a;->a:Landroid/content/Context;

    iget-object v1, p0, Li5/a;->b:Lv4/c;

    invoke-static {v0, v1}, Lk5/d;->p(Landroid/content/Context;Lv4/c;)V

    :cond_2
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Li5/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "status_sent_date"

    const-wide/16 v4, 0x0

    .line 8
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lk5/d;->b(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "do not send setting < 1day"

    .line 10
    invoke-static {p0}, Lk5/b;->a(Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v0, "Send Setting Log"

    .line 11
    invoke-static {v0}, Lk5/b;->a(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "ts"

    .line 14
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "t"

    const-string/jumbo v7, "st"

    .line 15
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lz4/b;->e()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 17
    invoke-direct {p0, v0, v1}, Li5/a;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-eq v6, v0, :cond_6

    if-nez v6, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sender type is invalid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk5/b;->g(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 19
    :cond_6
    :goto_0
    invoke-direct {p0, v1}, Li5/a;->b(Ljava/util/Map;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    .line 20
    iget-object p0, p0, Li5/a;->a:Landroid/content/Context;

    invoke-static {p0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 22
    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 24
    :cond_7
    iget-object p0, p0, Li5/a;->a:Landroid/content/Context;

    invoke-static {p0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Setting Log Result = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk5/b;->a(Ljava/lang/String;)V

    return v2

    :cond_8
    :goto_3
    const-string p0, "Setting Sender"

    const-string v0, "No status log"

    .line 27
    invoke-static {p0, v0}, Lk5/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public run()V
    .locals 2

    new-instance v0, Li5/b;

    iget-object v1, p0, Li5/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Li5/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Li5/b;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Li5/a;->c:Ljava/util/List;

    return-void
.end method
