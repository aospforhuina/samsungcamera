.class public final synthetic Lcom/sec/android/app/camera/setting/r4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/r4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/r4;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/r4;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/r4;->a:Lcom/sec/android/app/camera/setting/r4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-static {p1}, Lcom/sec/android/app/camera/setting/WatermarkFragment;->Z(Landroidx/preference/Preference;)V

    return-void
.end method
