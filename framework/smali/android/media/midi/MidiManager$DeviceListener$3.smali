.class Landroid/media/midi/MidiManager$DeviceListener$3;
.super Ljava/lang/Object;
.source "MidiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager$DeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/midi/MidiManager$DeviceListener;

.field final synthetic val$statusF:Landroid/media/midi/MidiDeviceStatus;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 3

    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener$3;->this$1:Landroid/media/midi/MidiManager$DeviceListener;

    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener$3;->val$statusF:Landroid/media/midi/MidiDeviceStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener$3;->this$1:Landroid/media/midi/MidiManager$DeviceListener;

    invoke-static {v0}, Landroid/media/midi/MidiManager$DeviceListener;->-get0(Landroid/media/midi/MidiManager$DeviceListener;)Landroid/media/midi/MidiManager$DeviceCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener$3;->val$statusF:Landroid/media/midi/MidiDeviceStatus;

    invoke-virtual {v0, v1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method