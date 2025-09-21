.class public final Lb1/v0;
.super Lb1/o0;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# instance fields
.field private a:Lb1/c;

.field private final b:I


# direct methods
.method public constructor <init>(Lb1/c;I)V
    .locals 0

    invoke-direct {p0}, Lb1/o0;-><init>()V

    iput-object p1, p0, Lb1/v0;->a:Lb1/c;

    iput p2, p0, Lb1/v0;->b:I

    return-void
.end method


# virtual methods
.method public final K(ILandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final W(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/v0;->a:Lb1/c;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb1/v0;->a:Lb1/c;

    iget v1, p0, Lb1/v0;->b:I

    .line 2
    invoke-virtual {v0, p1, p2, p3, v1}, Lb1/c;->M(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb1/v0;->a:Lb1/c;

    return-void
.end method

.method public final s(ILandroid/os/IBinder;Lb1/z0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/v0;->a:Lb1/c;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0, p3}, Lb1/c;->a0(Lb1/c;Lb1/z0;)V

    iget-object p3, p3, Lb1/z0;->a:Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lb1/v0;->W(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
