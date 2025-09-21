.class public Lcom/sec/android/app/camera/provider/CameraLocationManager;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_DISTANCE:F = 100.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field private static final LOCATION_MODE_UNSET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CameraLocationManager"

.field private static mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mAddressValue:Ljava/lang/String;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocationForCapture:Landroid/location/Location;

.field private final mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mSLocation:Landroid/location/Location;

.field private mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

.field private mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationForCapture:Landroid/location/Location;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public static synthetic a(Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->lambda$stopHandler$1(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->lambda$startHandler$0()V

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method public static clear()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->stopHandler()V

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->clearContext()V

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/provider/CameraLocationManager;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    return-void
.end method

.method public static getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v1, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initializeLocationManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sec_location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_1
    return-void
.end method

.method private synthetic lambda$startHandler$0()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->receivingLocationUpdates()V

    return-void
.end method

.method private static synthetic lambda$stopHandler$1(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private receivingLocationUpdates()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "receivingLocationUpdates failed : provider does not exist"

    const-string v2, "receivingLocationUpdates fail to request location update, ignore"

    .line 1
    iget-object v3, v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "CameraLocationManager"

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "receivingLocationUpdates return, location permission check is fail."

    .line 3
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    .line 5
    iget-object v3, v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startAddressRequest()V

    goto :goto_2

    .line 7
    :cond_2
    :try_start_0
    iget-object v5, v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    const-wide/16 v7, 0x3e8

    const/high16 v9, 0x42c80000    # 100.0f

    iget-object v3, v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :catch_1
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    :try_start_1
    iget-object v11, v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v12, "gps"

    const-wide/16 v13, 0x3e8

    const/high16 v15, 0x42c80000    # 100.0f

    iget-object v0, v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v3, 0x0

    aget-object v16, v0, v3

    invoke-virtual/range {v11 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 11
    :catch_2
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :catch_3
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "receivingLocationUpdates : LocationManager"

    .line 13
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string v0, "receivingLocationUpdates return, camera is not running."

    .line 14
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static requestHighAccuracyLocationMode(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "CameraLocationManager"

    const-string v1, "requestHighAccuracyLocationMode"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->d()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->i(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->g(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->f(J)Lcom/google/android/gms/location/LocationRequest;

    .line 6
    new-instance v1, Lm1/d$a;

    invoke-direct {v1}, Lm1/d$a;-><init>()V

    invoke-virtual {v1, v0}, Lm1/d$a;->a(Lcom/google/android/gms/location/LocationRequest;)Lm1/d$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lm1/d$a;->c(Z)Lm1/d$a;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lm1/c;->a(Landroid/content/Context;)Lm1/i;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lm1/d$a;->b()Lm1/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lm1/i;->k(Lm1/d;)Lp1/e;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p0, v1}, Lp1/e;->c(Landroid/app/Activity;Lp1/c;)Lp1/e;

    return-void
.end method

.method private showLocationTagToast(Lcom/sec/android/app/camera/interfaces/CameraContext;ZILandroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0047

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p4, 0x7f0a0499

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const p2, 0x7f120395

    goto :goto_0

    :cond_0
    const p2, 0x7f120394

    .line 4
    :goto_0
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(I)V

    .line 5
    new-instance p2, Landroid/widget/Toast;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p2, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 7
    invoke-virtual {p2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startAddressRequest()V
    .locals 3

    const-string v0, "CameraLocationManager"

    .line 1
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/location/SemLocationManager;->requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "startAddressRequest fail to request sem location update, ignore"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p0, "startAddressRequest : SemLocationManager"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandlerThread:Landroid/os/HandlerThread;

    const-string v1, "CameraLocationManager"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "startHandler : Location already requested."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "startHandler"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance v1, Lcom/sec/android/app/camera/provider/p;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/p;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopHandler()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraLocationManager"

    const-string/jumbo v1, "stopHandler - start"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/provider/q;->a:Lcom/sec/android/app/camera/provider/q;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopHandler : interrupted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 8
    iput-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo p0, "stopHandler - end"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAddressValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isLocationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    if-eqz p0, :cond_3

    move-object v0, p0

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 6
    invoke-virtual {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentLocation : valid = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraLocationManager"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLocationForCapture()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationForCapture:Landroid/location/Location;

    return-object p0
.end method

.method public isGPSProviderEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLocationAvailable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CameraLocationManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "isLocationAvailable false, location tag is off."

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "isLocationAvailable false, network provider is not enabled."

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->isLocationPermissionGranted()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "isLocationAvailable false, attach mode not has location permission."

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "isLocationAvailable true."

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isNetworkLocationProviderEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startLocationRequest()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startLocationRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "pref_network_connection_allowed_in_china_information_security_dialog"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public startLocationRequest(I)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-lez p1, :cond_3

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    or-int/2addr p1, v2

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result p1

    .line 5
    :goto_2
    sget-object v2, Lu3/b;->k:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/PackageUtil;->isGoogleServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v0

    :goto_4
    if-nez p1, :cond_7

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isDialogEnabled(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_5

    .line 8
    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isGPSProviderEnabled()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->showLocationTagToast(Lcom/sec/android/app/camera/interfaces/CameraContext;ZILandroid/view/ViewGroup;)V

    :goto_5
    return v1

    .line 9
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startHandler()V

    return v0
.end method

.method public stopLocationRequest()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationForCapture:Landroid/location/Location;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v2, "CameraLocationManager"

    if-nez v1, :cond_0

    const-string/jumbo p0, "stopLocationRequest return, camera context is null."

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo p0, "stopLocationRequest return, location permission check is fail."

    .line 5
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "stopLocationRequest"

    .line 6
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->stopHandler()V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v1, v3}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    const-string/jumbo v0, "stopLocationRequest : SemLocationManager"

    .line 13
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 16
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 17
    invoke-virtual {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->reset()V

    const-string/jumbo v4, "stopLocationRequest : LocationManager"

    .line 18
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v4, "stopLocationRequest fail to remove location listeners, ignore"

    .line 19
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateLocationForCapture()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationForCapture:Landroid/location/Location;

    return-void
.end method
