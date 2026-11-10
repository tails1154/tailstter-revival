.class public final Lcom/twitter/android/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lcom/twitter/android/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/android/service/d;

    invoke-direct {v0}, Lcom/twitter/android/service/d;-><init>()V

    sput-object v0, Lcom/twitter/android/service/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/service/e;->a:Lcom/twitter/android/service/a;

    return-void

    :cond_0
    const-string v0, "com.twitter.android.service.ITwitterSessionCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/twitter/android/service/a;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/twitter/android/service/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/twitter/android/service/b;

    invoke-direct {v0, v1}, Lcom/twitter/android/service/b;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/android/service/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/service/e;->a:Lcom/twitter/android/service/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/service/e;->a:Lcom/twitter/android/service/a;

    invoke-interface {v0, p1}, Lcom/twitter/android/service/a;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/service/e;->a:Lcom/twitter/android/service/a;

    invoke-interface {v0}, Lcom/twitter/android/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
