.class public abstract Lr4/k;
.super Ljava/lang/Object;
.source "TaskRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected a:Lr4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/f<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr4/f;

    invoke-direct {v0}, Lr4/f;-><init>()V

    iput-object v0, p0, Lr4/k;->a:Lr4/f;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Lr4/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/e<",
            "TTResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lr4/k;->a:Lr4/f;

    invoke-virtual {p0}, Lr4/f;->a()Lr4/e;

    move-result-object p0

    return-object p0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lr4/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq4/b;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lo4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lr4/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available. statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo4/a;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lr4/k;->a:Lr4/f;

    invoke-virtual {v0, v1}, Lr4/f;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lr4/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ScsApi@TaskRunnable<>"

    const-string v2, "Uncaught Exception!!!"

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    iget-object p0, p0, Lr4/k;->a:Lr4/f;

    invoke-virtual {p0, v0}, Lr4/f;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
