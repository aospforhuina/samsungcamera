.class public final Lb1/x0;
.super Lb1/n0;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# instance fields
.field public final g:Landroid/os/IBinder;

.field final synthetic h:Lb1/c;


# direct methods
.method public constructor <init>(Lb1/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lb1/x0;->h:Lb1/c;

    invoke-direct {p0, p1, p2, p4}, Lb1/n0;-><init>(Lb1/c;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lb1/x0;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final f(Ly0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/x0;->h:Lb1/c;

    invoke-static {v0}, Lb1/c;->T(Lb1/c;)Lb1/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb1/x0;->h:Lb1/c;

    .line 2
    invoke-static {v0}, Lb1/c;->T(Lb1/c;)Lb1/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lb1/c$b;->a(Ly0/a;)V

    :cond_0
    iget-object p0, p0, Lb1/x0;->h:Lb1/c;

    .line 3
    invoke-virtual {p0, p1}, Lb1/c;->K(Ly0/a;)V

    return-void
.end method

.method protected final g()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lb1/x0;->g:Landroid/os/IBinder;

    invoke-static {v2}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lb1/x0;->h:Lb1/c;

    .line 2
    invoke-virtual {v3}, Lb1/c;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, p0, Lb1/x0;->h:Lb1/c;

    .line 3
    invoke-virtual {p0}, Lb1/c;->D()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x22

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "service descriptor mismatch: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lb1/x0;->h:Lb1/c;

    iget-object v2, p0, Lb1/x0;->g:Landroid/os/IBinder;

    .line 4
    invoke-virtual {v0, v2}, Lb1/c;->r(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lb1/x0;->h:Lb1/c;

    const/4 v3, 0x2

    const/4 v4, 0x4

    .line 5
    invoke-static {v2, v3, v4, v0}, Lb1/c;->e0(Lb1/c;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lb1/x0;->h:Lb1/c;

    const/4 v3, 0x3

    .line 6
    invoke-static {v2, v3, v4, v0}, Lb1/c;->e0(Lb1/c;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lb1/x0;->h:Lb1/c;

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lb1/c;->X(Lb1/c;Ly0/a;)V

    iget-object v0, p0, Lb1/x0;->h:Lb1/c;

    .line 8
    invoke-virtual {v0}, Lb1/c;->w()Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lb1/x0;->h:Lb1/c;

    invoke-static {p0}, Lb1/c;->S(Lb1/c;)Lb1/c$a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lb1/c;->S(Lb1/c;)Lb1/c$a;

    move-result-object p0

    .line 9
    invoke-interface {p0, v0}, Lb1/c$a;->e(Landroid/os/Bundle;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :catch_0
    const-string p0, "service probably died"

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
