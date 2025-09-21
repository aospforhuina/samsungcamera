.class final Lb1/d0;
.super Lb1/e0;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:La1/g;


# direct methods
.method constructor <init>(Landroid/content/Intent;La1/g;I)V
    .locals 0

    iput-object p1, p0, Lb1/d0;->a:Landroid/content/Intent;

    iput-object p2, p0, Lb1/d0;->b:La1/g;

    invoke-direct {p0}, Lb1/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lb1/d0;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb1/d0;->b:La1/g;

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, La1/g;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
