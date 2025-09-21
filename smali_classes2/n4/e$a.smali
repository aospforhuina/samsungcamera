.class Ln4/e$a;
.super Ljava/lang/Object;
.source "ImageServiceExecutor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ln4/e;


# direct methods
.method constructor <init>(Ln4/e;)V
    .locals 0

    iput-object p1, p0, Ln4/e$a;->a:Ln4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "ScsApi@ImageServiceExecutor"

    const-string v1, "binderDied deathRecipient callback"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Ln4/e$a;->a:Ln4/e;

    invoke-static {v0}, Ln4/e;->j(Ln4/e;)Lc4/a;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Ln4/e$a;->a:Ln4/e;

    invoke-static {p0}, Ln4/e;->i(Ln4/e;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
