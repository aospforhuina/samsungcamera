.class Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/provider/CameraLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mValidOfGPS:I

.field mValidOfNetwork:I

.field final synthetic this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    .line 4
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 5

    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const-string v0, "CameraLocationManager"

    const-string v1, "onLocationChanged"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 4
    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    .line 7
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProviderDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraLocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gps"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    goto :goto_0

    :cond_0
    const-string v0, "network"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->reset()V

    :cond_2
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProviderEnabled "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraLocationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStatusChanged - status["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] - provider["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CameraLocationManager"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-static {p3}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->c(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "gps"

    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    iput p2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    :cond_1
    const-string p3, "network"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iput p2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfGPS:I

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->mValidOfNetwork:I

    return-void
.end method
