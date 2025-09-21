.class Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;
.super Ljava/lang/Object;
.source "CustomizableSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupportedKeyInfo"
.end annotation


# instance fields
.field private final mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field private final mRemovedVersion:Lu3/a;

.field private final mSinceVersion:Lu3/a;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->mSinceVersion:Lu3/a;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->mRemovedVersion:Lu3/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;Lcom/sec/android/app/camera/setting/repository/mm;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;-><init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->isSupported(I)Z

    move-result p0

    return p0
.end method

.method private getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->mKey:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method private isSupported(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->mSinceVersion:Lu3/a;

    invoke-virtual {v0}, Lu3/a;->a()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->mRemovedVersion:Lu3/a;

    invoke-virtual {p0}, Lu3/a;->a()I

    move-result p0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
