.class public Le5/c;
.super Ljava/lang/Object;
.source "SendLogTask.java"

# interfaces
.implements Lb6/b;


# instance fields
.field private a:Lc5/f;

.field private b:Lh6/a;

.field private c:Lv4/c;


# direct methods
.method constructor <init>(Lh6/a;Lv4/c;Lc5/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le5/c;->a:Lc5/f;

    .line 3
    iput-object p1, p0, Le5/c;->b:Lh6/a;

    .line 4
    iput-object p2, p0, Le5/c;->c:Lv4/c;

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Le5/c;->b:Lh6/a;

    .line 2
    iget-object v1, p0, Le5/c;->c:Lv4/c;

    invoke-virtual {v1}, Lv4/c;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Le5/c;->c:Lv4/c;

    .line 3
    invoke-virtual {v2}, Lv4/c;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le5/c;->a:Lc5/f;

    .line 4
    invoke-virtual {v3}, Lc5/f;->d()Lc5/c;

    move-result-object v3

    invoke-virtual {v3}, Lc5/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le5/c;->a:Lc5/f;

    .line 5
    invoke-virtual {v4}, Lc5/f;->c()J

    move-result-wide v4

    iget-object p0, p0, Le5/c;->a:Lc5/f;

    .line 6
    invoke-virtual {p0}, Lc5/f;->a()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface/range {v0 .. v6}, Lh6/a;->n(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lk5/b;->e(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
