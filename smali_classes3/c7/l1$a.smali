.class public final Lc7/l1$a;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc7/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lc7/l1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lc7/l1;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lc7/l1;Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc7/l1;",
            "TR;",
            "Lu6/p<",
            "-TR;-",
            "Ln6/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ln6/g$b$a;->a(Ln6/g$b;Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lc7/l1;Ln6/g$c;)Ln6/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ln6/g$b;",
            ">(",
            "Lc7/l1;",
            "Ln6/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ln6/g$b$a;->b(Ln6/g$b;Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lc7/l1;ZZLu6/l;ILjava/lang/Object;)Lc7/u0;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lc7/l1;->b(ZZLu6/l;)Lc7/u0;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lc7/l1;Ln6/g$c;)Ln6/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/l1;",
            "Ln6/g$c<",
            "*>;)",
            "Ln6/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Ln6/g$b$a;->c(Ln6/g$b;Ln6/g$c;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lc7/l1;Ln6/g;)Ln6/g;
    .locals 0

    invoke-static {p0, p1}, Ln6/g$b$a;->d(Ln6/g$b;Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0
.end method
