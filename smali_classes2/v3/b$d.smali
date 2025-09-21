.class Lv3/b$d;
.super Ljava/lang/Object;
.source "STPServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lv3/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lv3/b$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "STPServiceClient"

    const-string p1, "onBindingDied()"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lv3/b;->a()Lv3/b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lv3/b;->c(Lv3/b;Z)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p0, "STPServiceClient"

    const-string p1, "onServiceConnected()"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lv3/b;->a()Lv3/b;

    move-result-object p0

    invoke-static {p0, p2}, Lv3/b;->b(Lv3/b;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "STPServiceClient"

    const-string p1, "onServiceDisconnected()"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lv3/b;->a()Lv3/b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lv3/b;->c(Lv3/b;Z)V

    return-void
.end method
