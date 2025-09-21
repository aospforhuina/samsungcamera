.class public abstract Lh1/a$a;
.super Lj1/b;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Lh1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, Lj1/b;-><init>(Ljava/lang/String;)V

    return-void
.end method
