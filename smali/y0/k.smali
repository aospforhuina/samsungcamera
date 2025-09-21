.class final Ly0/k;
.super Li1/f;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final a:Landroid/content/Context;

.field final synthetic b:Ly0/d;


# direct methods
.method public constructor <init>(Ly0/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/k;->b:Ly0/d;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Li1/f;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ly0/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle this message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GoogleApiAvailability"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Ly0/k;->b:Ly0/d;

    iget-object v0, p0, Ly0/k;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, v0}, Ly0/d;->e(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Ly0/k;->b:Ly0/d;

    .line 5
    invoke-virtual {v0, p1}, Ly0/d;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly0/k;->b:Ly0/d;

    iget-object p0, p0, Ly0/k;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, p0, p1}, Ly0/d;->m(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
