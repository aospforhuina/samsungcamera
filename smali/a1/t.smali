.class public final synthetic La1/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La1/i;


# direct methods
.method public synthetic constructor <init>(La1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/t;->a:La1/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, La1/t;->a:La1/i;

    invoke-virtual {p0}, La1/i;->p()V

    return-void
.end method
