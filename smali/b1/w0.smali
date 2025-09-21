.class public final Lb1/w0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:I

.field final synthetic b:Lb1/c;


# direct methods
.method public constructor <init>(Lb1/c;I)V
    .locals 0

    iput-object p1, p0, Lb1/w0;->b:Lb1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb1/w0;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p0, p0, Lb1/w0;->b:Lb1/c;

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lb1/c;->b0(Lb1/c;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lb1/w0;->b:Lb1/c;

    invoke-static {p1}, Lb1/c;->U(Lb1/c;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lb1/w0;->b:Lb1/c;

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 2
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    instance-of v2, v1, Lb1/m;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lb1/m;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lb1/p0;

    invoke-direct {v1, p2}, Lb1/p0;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_0
    invoke-static {v0, v1}, Lb1/c;->Y(Lb1/c;Lb1/m;)V

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb1/w0;->b:Lb1/c;

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget p0, p0, Lb1/w0;->a:I

    .line 8
    invoke-virtual {p1, p2, v0, p0}, Lb1/c;->c0(ILandroid/os/Bundle;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb1/w0;->b:Lb1/c;

    invoke-static {p1}, Lb1/c;->U(Lb1/c;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lb1/w0;->b:Lb1/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb1/c;->Y(Lb1/c;Lb1/m;)V

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb1/w0;->b:Lb1/c;

    iget-object p1, p1, Lb1/c;->l:Landroid/os/Handler;

    const/4 v0, 0x6

    iget p0, p0, Lb1/w0;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
