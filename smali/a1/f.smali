.class public La1/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, La1/f;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, La1/f;->a:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public final b()Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, La1/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, La1/f;->a:Ljava/lang/Object;

    instance-of p0, p0, Landroid/app/Activity;

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, La1/f;->a:Ljava/lang/Object;

    instance-of p0, p0, Landroidx/fragment/app/FragmentActivity;

    return p0
.end method
