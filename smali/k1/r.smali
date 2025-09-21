.class public final Lk1/r;
.super Lb1/h;
.source "com.google.android.gms:play-services-location@@20.0.0"


# instance fields
.field private final I:Ljava/util/Map;

.field private final J:Ljava/util/Map;

.field private final K:Ljava/util/Map;

.field private final L:Ljava/lang/String;

.field private M:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lb1/e;La1/d;La1/j;Ljava/lang/String;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lb1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILb1/e;La1/d;La1/j;)V

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lk1/r;->I:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lk1/r;->J:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    .line 4
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lk1/r;->K:Ljava/util/Map;

    iput-object p6, p0, Lk1/r;->L:Ljava/lang/String;

    return-void
.end method

.method private final k0(Ly0/c;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lb1/c;->l()[Ly0/c;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    aget-object v3, p0, v2

    .line 3
    invoke-virtual {p1}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    return v0

    .line 4
    :cond_3
    invoke-virtual {v3}, Ly0/c;->e()J

    move-result-wide v1

    invoke-virtual {p1}, Ly0/c;->e()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method


# virtual methods
.method protected final D()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object p0
.end method

.method protected final E()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object p0
.end method

.method public final Q()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b()V
    .locals 7

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb1/c;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lk1/r;->I:Ljava/util/Map;

    .line 2
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v1, p0, Lk1/r;->I:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk1/p;

    .line 4
    invoke-virtual {p0}, Lb1/c;->C()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lk1/f;

    .line 5
    invoke-static {v2, v3}, Lk1/u;->e(Lm1/r;Lk1/d;)Lk1/u;

    move-result-object v2

    .line 6
    invoke-interface {v4, v2}, Lk1/f;->p0(Lk1/u;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk1/r;->I:Ljava/util/Map;

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lk1/r;->J:Ljava/util/Map;

    .line 9
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v1, p0, Lk1/r;->J:Ljava/util/Map;

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk1/l;

    .line 11
    invoke-virtual {p0}, Lb1/c;->C()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lk1/f;

    .line 12
    invoke-static {v2, v3}, Lk1/u;->d(Lm1/o;Lk1/d;)Lk1/u;

    move-result-object v2

    .line 13
    invoke-interface {v4, v2}, Lk1/f;->p0(Lk1/u;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lk1/r;->J:Ljava/util/Map;

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lk1/r;->K:Ljava/util/Map;

    .line 16
    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v1, p0, Lk1/r;->K:Ljava/util/Map;

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk1/m;

    .line 18
    invoke-virtual {p0}, Lb1/c;->C()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lk1/f;

    .line 19
    new-instance v5, Lk1/a0;

    const/4 v6, 0x2

    .line 20
    invoke-direct {v5, v6, v3, v2, v3}, Lk1/a0;-><init>(ILk1/y;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 21
    invoke-interface {v4, v5}, Lk1/f;->E(Lk1/a0;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lk1/r;->K:Ljava/util/Map;

    .line 22
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 23
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-boolean v0, p0, Lk1/r;->M:Z

    if-eqz v0, :cond_3

    .line 24
    new-instance v0, Lk1/i;

    invoke-direct {v0, p0}, Lk1/i;-><init>(Lk1/r;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lk1/r;->j0(ZLa1/e;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 25
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_1
    move-exception v1

    .line 26
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_2
    move-exception v1

    .line 27
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catch_0
    move-exception v0

    :try_start_e
    const-string v1, "LocationClientImpl"

    const-string v2, "Client disconnected before listeners could be cleaned up"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_3
    :goto_3
    invoke-super {p0}, Lb1/c;->b()V

    .line 30
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0
.end method

.method public final j0(ZLa1/e;)V
    .locals 1

    .line 1
    sget-object v0, Lm1/c0;->g:Ly0/c;

    invoke-direct {p0, v0}, Lk1/r;->k0(Ly0/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb1/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lk1/f;

    invoke-interface {v0, p1, p2}, Lk1/f;->t0(ZLa1/e;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb1/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lk1/f;

    invoke-interface {v0, p1}, Lk1/f;->w0(Z)V

    .line 4
    sget-object v0, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p2, v0}, La1/e;->H(Lcom/google/android/gms/common/api/Status;)V

    .line 5
    :goto_0
    iput-boolean p1, p0, Lk1/r;->M:Z

    return-void
.end method

.method public final k()I
    .locals 0

    const p0, 0xb2c988

    return p0
.end method

.method public final l0(Lm1/d;La1/c;Ljava/lang/String;)V
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "locationSettingsRequest can\'t be null nor empty."

    .line 1
    invoke-static {v1, v2}, Lb1/p;->b(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    const-string v0, "listener can\'t be null."

    .line 2
    invoke-static {p3, v0}, Lb1/p;->b(ZLjava/lang/Object;)V

    new-instance p3, Lk1/q;

    .line 3
    invoke-direct {p3, p2}, Lk1/q;-><init>(La1/c;)V

    .line 4
    invoke-virtual {p0}, Lb1/c;->C()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lk1/f;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p3, p2}, Lk1/f;->t(Lm1/d;Lk1/h;Ljava/lang/String;)V

    return-void
.end method

.method protected final synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    .line 1
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lk1/f;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lk1/f;

    goto :goto_0

    :cond_1
    new-instance p0, Lk1/e;

    invoke-direct {p0, p1}, Lk1/e;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final u()[Ly0/c;
    .locals 0

    sget-object p0, Lm1/c0;->j:[Ly0/c;

    return-object p0
.end method

.method protected final z()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lk1/r;->L:Ljava/lang/String;

    const-string v1, "client_name"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
