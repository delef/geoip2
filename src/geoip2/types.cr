module GeoIP2
  lib LibMMDB
    UINT128_USING_MODE = 0
    UINT128_IS_BYTE_ARRAY = 0

    alias Uint32T = LibC::UInt
    alias X__SsizeT = LibC::Long
    alias SsizeT = X__SsizeT
    alias Uint8T = UInt8
    alias Uint16T = LibC::UShort
    alias Uint64T = LibC::ULong
    alias SaFamilyT = LibC::UShort
    alias X__OffT = LibC::Long
    alias X_IoLockT = Void
    alias X__Off64T = LibC::Long

    struct EntryS
      mmdb : S*
      offset : Uint32T
    end

    struct S
      flags : Uint32T
      filename : LibC::Char*
      file_size : SsizeT
      file_content : Uint8T*
      data_section : Uint8T*
      data_section_size : Uint32T
      metadata_section : Uint8T*
      metadata_section_size : Uint32T
      full_record_byte_size : Uint16T
      depth : Uint16T
      ipv4_start_node : Void*
      metadata : Void*
    end

    struct LookupResultS
      found_entry : Bool
      entry : EntryS
      netmask : Uint16T
    end

    struct EntryDataS
      has_data : Bool
      offset : Uint32T
      offset_to_next : Uint32T
      data_size : Uint32T
      type : Uint32T
    end

    struct EntryDataListS
      entry_data : EntryDataS
      next : EntryDataListS*
    end

    struct DescriptionS
      language : LibC::Char*
      description : LibC::Char*
    end

    struct MetadataS
      node_count : Uint32T
      record_size : Uint16T
      ip_version : Uint16T
      database_type : LibC::Char*
      languages : MetadataSLanguages
      binary_format_major_version : Uint16T
      binary_format_minor_version : Uint16T
      build_epoch : Uint64T
      description : MetadataSDescription
    end

    struct MetadataSLanguages
      count : LibC::SizeT
      names : LibC::Char**
    end

    struct MetadataSDescription
      count : LibC::SizeT
      descriptions : DescriptionS**
    end

    struct Ipv4StartNodeS
      netmask : Uint16T
      node_value : Uint32T
    end

    struct SearchNodeS
      left_record : Uint64T
      right_record : Uint64T
      left_record_type : Uint8T
      right_record_type : Uint8T
      left_record_entry : EntryS
      right_record_entry : EntryS
    end

    struct Sockaddr
      sa_family : SaFamilyT
      sa_data : LibC::Char[14]
    end

    struct X_IoFile
      _flags : LibC::Int
      _io_read_ptr : LibC::Char*
      _io_read_end : LibC::Char*
      _io_read_base : LibC::Char*
      _io_write_base : LibC::Char*
      _io_write_ptr : LibC::Char*
      _io_write_end : LibC::Char*
      _io_buf_base : LibC::Char*
      _io_buf_end : LibC::Char*
      _io_save_base : LibC::Char*
      _io_backup_base : LibC::Char*
      _io_save_end : LibC::Char*
      _markers : X_IoMarker*
      _chain : X_IoFile*
      _fileno : LibC::Int
      _flags2 : LibC::Int
      _old_offset : X__OffT
      _cur_column : LibC::UShort
      _vtable_offset : LibC::Char
      _shortbuf : LibC::Char[1]
      _lock : X_IoLockT*
      _offset : X__Off64T
      __pad1 : Void*
      __pad2 : Void*
      __pad3 : Void*
      __pad4 : Void*
      __pad5 : LibC::SizeT
      _mode : LibC::Int
      _unused2 : LibC::Char[20]
    end
    type File = X_IoFile
    
    struct X_IoMarker
      _next : X_IoMarker*
      _sbuf : X_IoFile*
      _pos : LibC::Int
    end
  end
end