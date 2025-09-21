.class public final synthetic Lcom/sec/android/app/camera/receiver/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/receiver/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/receiver/b;

    invoke-direct {v0}, Lcom/sec/android/app/camera/receiver/b;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/receiver/b;->a:Lcom/sec/android/app/camera/receiver/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/receiver/SmartSwitchReceiver$CameraBackupRestoreTask;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
