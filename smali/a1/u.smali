.class public final synthetic La1/u;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La1/i;

.field public final synthetic b:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(La1/i;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/u;->a:La1/i;

    iput-object p2, p0, La1/u;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, La1/u;->a:La1/i;

    iget-object p0, p0, La1/u;->b:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, La1/i;->q(Landroid/os/IBinder;)V

    return-void
.end method
