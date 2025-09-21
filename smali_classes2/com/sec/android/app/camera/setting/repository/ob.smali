.class public final synthetic Lcom/sec/android/app/camera/setting/repository/ob;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/repository/ValueGetter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/repository/ob;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/ob;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/repository/ob;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/repository/ob;->a:Lcom/sec/android/app/camera/setting/repository/ob;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->B6()I

    move-result p0

    return p0
.end method
