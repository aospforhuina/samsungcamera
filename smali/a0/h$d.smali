.class La0/h$d;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lx/f;

.field private b:Lx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/l<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:La0/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/u<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, La0/h$d;->a:Lx/f;

    .line 2
    iput-object v0, p0, La0/h$d;->b:Lx/l;

    .line 3
    iput-object v0, p0, La0/h$d;->c:La0/u;

    return-void
.end method

.method b(La0/h$e;Lx/i;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    .line 1
    invoke-static {v0}, Lv0/b;->a(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-interface {p1}, La0/h$e;->a()Lc0/a;

    move-result-object p1

    iget-object v0, p0, La0/h$d;->a:Lx/f;

    new-instance v1, La0/e;

    iget-object v2, p0, La0/h$d;->b:Lx/l;

    iget-object v3, p0, La0/h$d;->c:La0/u;

    invoke-direct {v1, v2, v3, p2}, La0/e;-><init>(Lx/d;Ljava/lang/Object;Lx/i;)V

    .line 3
    invoke-interface {p1, v0, v1}, Lc0/a;->b(Lx/f;Lc0/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, La0/h$d;->c:La0/u;

    invoke-virtual {p0}, La0/u;->g()V

    .line 5
    invoke-static {}, Lv0/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object p0, p0, La0/h$d;->c:La0/u;

    invoke-virtual {p0}, La0/u;->g()V

    .line 7
    invoke-static {}, Lv0/b;->d()V

    throw p1
.end method

.method c()Z
    .locals 0

    iget-object p0, p0, La0/h$d;->c:La0/u;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d(Lx/f;Lx/l;La0/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lx/f;",
            "Lx/l<",
            "TX;>;",
            "La0/u<",
            "TX;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, La0/h$d;->a:Lx/f;

    .line 2
    iput-object p2, p0, La0/h$d;->b:Lx/l;

    .line 3
    iput-object p3, p0, La0/h$d;->c:La0/u;

    return-void
.end method
