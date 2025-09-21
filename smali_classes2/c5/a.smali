.class public abstract Lc5/a;
.super Ljava/lang/Object;
.source "BaseLogSender.java"

# interfaces
.implements Lc5/b;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lv4/c;

.field protected c:Lf5/a;

.field protected d:Lb6/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv4/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc5/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lc5/a;->b:Lv4/c;

    .line 4
    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v0

    iput-object v0, p0, Lc5/a;->d:Lb6/c;

    .line 5
    invoke-static {p1, p2}, Lf5/a;->f(Landroid/content/Context;Lv4/c;)Lf5/a;

    move-result-object p1

    iput-object p1, p0, Lc5/a;->c:Lf5/a;

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/Map;)Lc5/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc5/c;"
        }
    .end annotation

    const-string/jumbo p0, "t"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lk5/d;->e(Ljava/lang/String;)Lc5/c;

    move-result-object p0

    return-object p0
.end method

.method protected c(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/a;->c:Lf5/a;

    new-instance v7, Lc5/f;

    const-string/jumbo v1, "t"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v1, "ts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2
    invoke-virtual {p0, p1}, Lc5/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc5/a;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lc5/a;->b(Ljava/util/Map;)Lc5/c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lc5/f;-><init>(Ljava/lang/String;JLjava/lang/String;Lc5/c;)V

    .line 3
    invoke-virtual {v0, v7}, Lf5/a;->h(Lc5/f;)V

    return-void
.end method

.method protected d(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object p0, Lk5/d$b;->c:Lk5/d$b;

    invoke-static {p1, p0}, Lk5/d;->n(Ljava/util/Map;Lk5/d$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract e(Ljava/util/Map;)Ljava/util/Map;
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
.end method
