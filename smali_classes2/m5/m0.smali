.class Lm5/m0;
.super Lm5/q0;
.source "LaunchSettingActivityCommand.java"


# instance fields
.field private final a:Lcom/sec/android/app/camera/interfaces/CommandInterface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm5/q0;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/m0;->a:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lm5/m0;->a:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchSettingsActivity()Z

    move-result p0

    return p0
.end method
