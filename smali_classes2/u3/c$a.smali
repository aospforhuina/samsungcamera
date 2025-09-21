.class Lu3/c$a;
.super Ljava/util/EnumMap;
.source "DeviceFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lu3/h;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lu3/c;


# direct methods
.method constructor <init>(Lu3/c;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/c$a;->a:Lu3/c;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lu3/h;->c:Lu3/h;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_WIDE"

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lu3/h;->g:Lu3/h;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_UW"

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lu3/h;->f:Lu3/h;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_TELE_STANDARD_CROP"

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lu3/h;->d:Lu3/h;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_TELE2"

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lu3/h;->b:Lu3/h;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_TELE_BINNING"

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
