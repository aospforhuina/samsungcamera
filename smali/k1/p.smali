.class final Lk1/p;
.super Lm1/q;
.source "com.google.android.gms:play-services-location@@20.0.0"


# virtual methods
.method public final declared-synchronized l(Landroid/location/Location;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lk1/o;

    invoke-direct {v0, p0, p1}, Lk1/o;-><init>(Lk1/p;Landroid/location/Location;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
