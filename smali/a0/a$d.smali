.class final La0/a$d;
.super Ljava/lang/ref/WeakReference;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "La0/p<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Lx/f;

.field final b:Z

.field c:La0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lx/f;La0/p;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/f;",
            "La0/p<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "La0/p<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx/f;

    iput-object p1, p0, La0/a$d;->a:Lx/f;

    .line 3
    invoke-virtual {p2}, La0/p;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2}, La0/p;->d()La0/v;

    move-result-object p1

    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/v;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-object p1, p0, La0/a$d;->c:La0/v;

    .line 6
    invoke-virtual {p2}, La0/p;->e()Z

    move-result p1

    iput-boolean p1, p0, La0/a$d;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, La0/a$d;->c:La0/v;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
