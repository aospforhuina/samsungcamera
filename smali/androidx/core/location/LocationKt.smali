.class public final Landroidx/core/location/LocationKt;
.super Ljava/lang/Object;
.source "Location.kt"


# direct methods
.method public static final component1(Landroid/location/Location;)D
    .locals 2

    const-string v0, "$this$component1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final component2(Landroid/location/Location;)D
    .locals 2

    const-string v0, "$this$component2"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method
