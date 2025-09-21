.class public Ln4/b;
.super Ljava/lang/Object;
.source "BoundaryDetector.java"


# instance fields
.field private a:Ln4/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ScsApi@BoundaryDetector"

    const-string v1, "BoundaryDetector"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ln4/e;

    invoke-direct {v0, p1}, Ln4/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln4/b;->a:Ln4/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lr4/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lr4/e<",
            "Ln4/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectLargest - Uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@BoundaryDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ln4/d;

    iget-object v1, p0, Ln4/b;->a:Ln4/e;

    invoke-direct {v0, v1}, Ln4/d;-><init>(Ln4/e;)V

    .line 3
    invoke-virtual {v0, p1}, Ln4/d;->d(Landroid/net/Uri;)V

    .line 4
    iget-object p0, p0, Ln4/b;->a:Ln4/e;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lr4/k;->c()Lr4/e;

    move-result-object p0

    return-object p0
.end method
